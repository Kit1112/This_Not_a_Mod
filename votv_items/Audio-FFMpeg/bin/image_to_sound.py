#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Image → Sound (for ThisNotAMod spectrogram)
Drag & drop PNG/JPG/BMP on this script (or pass path via CLI).

Matches analyzer params from PanelPlaybackScreen:
- SR = 44100
- FFT_SIZE = 1024
- HOP = 512            # 50% overlap
- BANDS = 48           # log-spaced 60..18000 Hz
- Log frequency mapping with band averaging similar to computeBands()

Output: WAV (16-bit PCM). If ffmpeg is available, also writes OGG (q5).
"""

import sys, os, math, shutil, subprocess
import numpy as np
from PIL import Image
import wave

SR = 44100
FFT_SIZE = 1024
HOP = 512
BANDS = 48
F_MIN = 60.0
F_MAX = 18000.0

def msg(*a):
    print("[img2snd]", *a)

def hann_window(n):
    # identical to 0.5 * (1 - cos(2*pi*n/(N-1)))
    return 0.5 * (1.0 - np.cos(2.0 * np.pi * np.arange(n) / (n - 1)))

def griffin_lim(mag, n_fft=FFT_SIZE, hop_length=HOP, n_iter=64, init_phase=None):
    """
    Reconstruct time-domain signal from magnitude spectrogram using Griffin–Lim.
    mag: (frames, n_bins) with n_bins = n_fft//2 + 1
    Returns float32 signal in [-1, 1].
    """
    n_bins = n_fft // 2 + 1
    assert mag.shape[1] == n_bins, "mag bins mismatch"
    frames = mag.shape[0]
    # optional: energy normalization to avoid silence
    mag = np.maximum(0.0, mag).astype(np.float64)

    if init_phase is None:
        phase = np.exp(1j * 2 * np.pi * np.random.rand(*mag.shape))
    else:
        phase = np.exp(1j * init_phase)

    S = mag * phase
    win = hann_window(n_fft)

    def istft(S):
        # overlap-add with Hann window and hop
        frames, n_bins = S.shape
        n_fft_local = (n_bins - 1) * 2
        # reconstruct full spectrum (conjugate symmetry)
        full = np.zeros((frames, n_fft_local), dtype=np.complex128)
        full[:, :n_bins] = S
        full[:, n_bins:] = np.conj(S[:, 1:n_bins-1][:, ::-1])
        # IFFT per frame
        x_frames = np.fft.ifft(full, axis=1).real
        # apply window
        x_frames *= win[None, :]
        # overlap-add
        out_len = (frames - 1) * hop_length + n_fft_local
        y = np.zeros(out_len, dtype=np.float64)
        wsum = np.zeros(out_len, dtype=np.float64)
        for i in range(frames):
            off = i * hop_length
            y[off:off+n_fft_local] += x_frames[i]
            wsum[off:off+n_fft_local] += win
        # normalize by window sum to avoid scalloping
        nz = wsum > 1e-8
        y[nz] /= wsum[nz]
        return y

    def stft(y):
        n = len(y)
        if n < n_fft:
            y = np.pad(y, (0, n_fft - n))
            n = len(y)
        # frame count
        frames = 1 + (n - n_fft) // hop_length
        S_local = np.zeros((frames, n_bins), dtype=np.complex128)
        for i in range(frames):
            off = i * hop_length
            seg = y[off:off+n_fft] * win
            spec = np.fft.rfft(seg, n=n_fft)
            S_local[i, :] = spec
        return S_local

    # GL iterations
    y = istft(S)
    for _ in range(n_iter):
        S_est = stft(y)
        S = mag * np.exp(1j * np.angle(S_est))
        y = istft(S)
    # peak normalize
    peak = np.max(np.abs(y)) + 1e-9
    y = (y / peak).astype(np.float32)
    return y

def bands_bounds(n_fft=FFT_SIZE, sr=SR, bands=BANDS, fmin=F_MIN, fmax=F_MAX):
    """Compute (kL, kH) for each log band, matching the mod's computeBands()."""
    kL = np.zeros(bands, dtype=np.int32)
    kH = np.zeros(bands, dtype=np.int32)
    for b in range(bands):
        lo = fmin * ((fmax / fmin) ** (b / bands))
        hi = fmin * ((fmax / fmin) ** ((b + 1) / bands))
        kl = int(math.ceil(lo * n_fft / sr))
        kh = int(math.floor(hi * n_fft / sr))
        kl = max(1, min(n_fft // 2, kl))
        kh = max(kl, min(n_fft // 2, kh))
        kL[b] = kl; kH[b] = kh
    return kL, kH

def image_to_matrix(img_path, bands=BANDS):
    """
    Load image, convert to grayscale [0..1].
    Map height -> frequency bands (bottom=low, top=high).
    Returns matrix M of shape (frames, bands) with values [0..1].
    """
    im = Image.open(img_path).convert("L")  # grayscale
    W, H = im.size
    arr = np.asarray(im, dtype=np.float32) / 255.0  # 0..1, 0=black,1=white

    # invert vertical so bottom is low freq (our analyzer expects low at bottom)
    arr = np.flipud(arr)  # now row 0 -> low freq, row H-1 -> high

    # compress/expand vertically to BANDS via averaging
    # map each band to a row range in the image
    band_vals = np.zeros((W, bands), dtype=np.float32)
    for b in range(bands):
        # proportional mapping of rows to bands
        y0 = int(round(b     * (H / bands)))
        y1 = int(round((b+1) * (H / bands)))
        y0 = max(0, min(H-1, y0))
        y1 = max(y0+1, min(H, y1))
        patch = arr[y0:y1, :]  # rows in [y0,y1)
        band_vals[:, b] = np.mean(patch, axis=0)

    # Now: time = columns (0..W-1), bands = dim 1.
    # Return frames x bands; we'll treat each column as one frame.
    return band_vals.astype(np.float64)  # shape (frames=W, bands)

def expand_bands_to_bins(M_fb, n_fft=FFT_SIZE, sr=SR, bands=BANDS, smooth=True):
    """
    Expand band magnitudes (frames, bands) to per-bin magnitudes (frames, n_bins).
    Each band's value is copied into FFT bins kL..kH; optional triangular smoothing between bands.
    """
    frames = M_fb.shape[0]
    n_bins = n_fft // 2 + 1
    out = np.zeros((frames, n_bins), dtype=np.float64)
    kL, kH = bands_bounds(n_fft, sr, bands)

    for b in range(bands):
        lo, hi = int(kL[b]), int(kH[b])
        if hi < lo: 
            continue
        val = M_fb[:, b][:, None]  # (frames,1)
        out[:, lo:hi+1] = val

    if smooth:
        # light horizontal smoothing across frequency to avoid ringing
        from scipy.ndimage import gaussian_filter1d as gf1d  # optional; if missing, skip
        try:
            out = gf1d(out, sigma=1.0, axis=1, mode='nearest')
        except Exception:
            pass

    # scale to a decent magnitude (not too loud, not too quiet)
    out *= 2.0
    return out

def save_wav(path, y, sr=SR):
    y = np.clip(y, -1.0, 1.0)
    pcm = (y * 32767.0).astype(np.int16)
    with wave.open(path, 'wb') as wf:
        wf.setnchannels(1)
        wf.setsampwidth(2)
        wf.setframerate(sr)
        wf.writeframes(pcm.tobytes())

def try_write_ogg(wav_path, ogg_path):
    ffmpeg = shutil.which("ffmpeg")
    if not ffmpeg:
        msg("ffmpeg not found; skipping OGG export.")
        return False
    cmd = [ffmpeg, "-y", "-loglevel", "error", "-i", wav_path, "-codec:a", "libvorbis", "-q:a", "5", ogg_path]
    try:
        subprocess.check_call(cmd)
        return True
    except subprocess.CalledProcessError:
        msg("ffmpeg failed; WAV is still available.")
        return False

def process_image(img_path):
    base, ext = os.path.splitext(img_path)
    out_wav = base + "_img2snd.wav"
    out_ogg = base + "_img2snd.ogg"

    msg("Loading image:", img_path)
    M = image_to_matrix(img_path, bands=BANDS)         # (frames=W, bands)
    frames = M.shape[0]
    duration = frames * (HOP / SR)
    msg(f"Frames={frames}, Duration≈{duration:.2f}s, Bands={BANDS}")

    # Expand to FFT bins
    mag = expand_bands_to_bins(M, n_fft=FFT_SIZE, sr=SR, bands=BANDS, smooth=True)  # (frames, n_bins)

    # Griffin–Lim to time domain
    y = griffin_lim(mag, n_fft=FFT_SIZE, hop_length=HOP, n_iter=64)

    # save
    save_wav(out_wav, y, sr=SR)
    msg("WAV written:", out_wav)

    if try_write_ogg(out_wav, out_ogg):
        msg("OGG written:", out_ogg)

def main():
    if len(sys.argv) < 2:
        print("Usage: image_to_sound.py <image1> [image2 ...]\nDrag-and-drop an image onto the script.")
        return
    for p in sys.argv[1:]:
        try:
            process_image(p)
        except Exception as e:
            msg("ERROR processing", p, ":", repr(e))

if __name__ == "__main__":
    main()
