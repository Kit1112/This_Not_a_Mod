package net.code.thisnotamod.client.gui;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mojang.blaze3d.systems.RenderSystem;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

import net.code.thisnotamod.world.inventory.PanelPlaybackMenu;

import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.resources.language.I18n;
import net.minecraft.client.resources.sounds.AbstractTickableSoundInstance;
import net.minecraft.client.resources.sounds.SoundInstance;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundSource;
import net.minecraft.world.entity.player.Inventory;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.lwjgl.stb.STBVorbis;
import org.lwjgl.stb.STBVorbisInfo;
import org.lwjgl.system.MemoryStack;
import org.lwjgl.system.MemoryUtil;
import java.nio.ByteBuffer;

/** Экран PanelPlayback: 640x360, 4 секции, список сигналов, прогрессивный рендер изображения/текста, play/pause. */
public class PanelPlaybackScreen extends AbstractContainerScreen<PanelPlaybackMenu> {
    // ---- Виртуальная геометрия и инкрусты ----
    public static final int VIRTUAL_W = 640;
    public static final int VIRTUAL_H = 360;

    private static final int INSET_LEFT = 12;
    private static final int INSET_RIGHT = 12;
    private static final int INSET_TOP = 12;
    private static final int INSET_BOTTOM = 84;

    private static final int SCREEN_X = INSET_LEFT;
    private static final int SCREEN_Y = INSET_TOP;
    private static final int SCREEN_W = VIRTUAL_W - INSET_LEFT - INSET_RIGHT;
    private static final int SCREEN_H = VIRTUAL_H - INSET_TOP - INSET_BOTTOM;

    private static final int GRID_COLS = 2;
    private static final int GRID_ROWS = 2;

    // Нижняя полоса с кнопками
    private static final int BTN_BAR_Y = SCREEN_Y + SCREEN_H + 20;

    // ---- Конфиги ----
    private static final boolean DEBUG_BUTTONS = true;
    private static final DateTimeFormatter DATE_FMT = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
    private static final double FALLBACK_DURATION_SEC = 6.0; // на первый запуск сигнала
    // Спектр: чувствительность и сглаживание
    private static final float SPEC_DB_FLOOR = -48f; // нижний порог (шума)
    private static final float SPEC_DB_CEIL  = -6f;  // «потолок» для нормализации
    private static final float SPEC_GAIN     = 0.55f; // <1.0 => менее чувствительно
    private static final float SPEC_DECAY    = 0.80f; // инерция спада столбиков
    // --- Режимы спектрограммы ---
    private enum SpecMode { BARS, HEAT }   // BARS = столбики (по месту), HEAT = 2D heatmap
    private SpecMode specMode = SpecMode.BARS;

    private float[] specHold = null;
    // --- Лог в чат ---
    private static void CHAT(String msg) {
        var mc = Minecraft.getInstance();
        if (mc == null) return;
        var line = Component.literal("[PanelPlayback] " + msg);
        if (mc.player != null) mc.player.sendSystemMessage(line);
        else if (mc.gui != null) mc.gui.getChat().addMessage(line);
    }
    private static String FMT(double v) {
        return String.format(java.util.Locale.US, "%.3f", v);
    }
    
    @Override	
	protected void renderLabels(GuiGraphics gg, int mouseX, int mouseY) {
    // Не рисуем ни заголовок, ни метку "Инвентарь"
	}


    // ---- Кнопки ----
    // Кнопки рисуем как зоны (хитбоксы). По макету — слева направо.
    private final IntRect btnVolKnob = new IntRect(SCREEN_X + 10, BTN_BAR_Y, 24, 24);          // 0 — крутилка громкости
    private final IntRect btnList    = new IntRect(SCREEN_X + 46, BTN_BAR_Y, 24, 24);          // 1 — прокрутка списка (колесо)
    private final IntRect btnStub2   = new IntRect(SCREEN_X + 82, BTN_BAR_Y, 24, 24);          // 2 — заглушка
    private final IntRect btnPlay    = new IntRect(SCREEN_X + 118, BTN_BAR_Y, 24, 24);         // 3 — Play/Pause
    private final IntRect btnStub4   = new IntRect(SCREEN_X + 154, BTN_BAR_Y, 24, 24);         // 4 — заглушка

    // ---- Рендер-скейл в окне ----
    private int guiX, guiY;
    private float guiScale;

    // ---- Данные сигналов и состояние ----
    private static List<SignalEntry> SIGNALS = null; // лениво загружаем один раз
    private static Map<Integer, String> firstSeenDates = new HashMap<>(); // id -> date string

    private int listScroll = 0;             // верхний индекс списка (для прокрутки)
    private int selectedIndex = 0;          // выбранный индекс (внутри SIGNALS)
    private float volume01 = 1.0f;          // громкость 0..1
    private boolean isPlaying = false;
    private boolean awaitingActivation = false; // ждём, когда SoundManager реально начнёт играть инстанс

    // ---- Спектрограмма (FFT) ----
    private static final int SPEC_BANDS = 48;   // число столбиков
    private static final int FFT_SIZE   = 1024; // степень двойки (512/1024/2048)

    private final Map<Integer, SpecData> specCacheById = new HashMap<>();
    private final float[] specNow    = new float[SPEC_BANDS]; // текущее отображение (сглажено)
    private final float[] specTarget = new float[SPEC_BANDS]; // «истинные» значения для текущего времени



    // Прогресс воспроизведения
    private final Map<Integer, Double> measuredDurSecById = new HashMap<>(); // id -> seconds
    private double playStartTimeSec = 0.0;
    private double playProgressSec = 0.0;      // текущий прогресс (обновляется каждый render)
    private PlaybackSound activeSound = null;  // текущий инстанс звука
    // debug: чтобы не спамить чат — логируем картинку один раз на смену
    private ResourceLocation dbgLastImage = null;


    public PanelPlaybackScreen(PanelPlaybackMenu menu, Inventory inv, Component title) {
        super(menu, inv, title);
        this.imageWidth = VIRTUAL_W;
        this.imageHeight = VIRTUAL_H;
        ensureSignalsLoaded();
        loadPersistent();
        clampIndices();
        ensureFirstSeenDates();
    }

    @Override public boolean isPauseScreen() { return false; }

    // ----------------- Основной рендер -----------------
    @Override
    protected void renderBg(GuiGraphics gg, float partialTick, int mouseX, int mouseY) {
        // Затемняем мир вокруг UI
        RenderSystem.enableBlend();
        final int shade = 0xA0000000;
        int screenW = this.width;
        int screenH = this.height;

        // Вписываем виртуальный 16:9 (VIRTUAL_W x VIRTUAL_H) в окно
        float targetW = screenW;
        float targetH = screenW * (9f / 16f);
        if (targetH > screenH) {
            targetH = screenH;
            targetW = screenH * (16f / 9f);
        }

        guiX = Math.round((screenW - targetW) / 2f);
        guiY = Math.round((screenH - targetH) / 2f);
        guiScale = targetW / (float) VIRTUAL_W;

        int uiW = Math.round(guiScale * VIRTUAL_W);
        int uiH = Math.round(guiScale * VIRTUAL_H);
        int left = guiX, top = guiY, right = guiX + uiW, bottom = guiY + uiH;

        // 4 маски вокруг UI
        gg.fill(0, 0, screenW, top, shade);
        gg.fill(0, top, left, bottom, shade);
        gg.fill(right, top, screenW, bottom, shade);
        gg.fill(0, bottom, screenW, screenH, shade);
        RenderSystem.disableBlend();

        // Переходим в виртуальные координаты
        gg.pose().pushPose();
        gg.pose().translate(guiX, guiY, 0);
        gg.pose().scale(guiScale, guiScale, 1f);

        // Рамка экрана и сетка 2x2
        drawScreenFrameAndGrid(gg);

        // Прямоугольники секций
        IntRect r0 = cellRect(0);
        IntRect r1 = cellRect(1);
        IntRect r2 = cellRect(2);
        IntRect r3 = cellRect(3);

        // Обновляем прогресс воспроизведения (учитывает реальную активацию звука)
        tickPlaybackProgress();

        // Рендер секций
        drawSignalList(gg, r0);              // 0: список
        drawSignalImageProgressive(gg, r1);  // 1: изображение (проявление сверху-вниз)
        drawSpectrogram(gg, r2);             // 2: спектрограмма (слева-направо)
        drawTextBlockProgressive(gg, r3);    // 3: текст (слева-направо)

        // Нижние кнопки (без подложки)
        drawBottomButtons(gg);

        gg.pose().popPose();
    }


    @Override
    public void render(GuiGraphics gg, int mouseX, int mouseY, float partialTick) {
        super.render(gg, mouseX, mouseY, partialTick);
        this.renderTooltip(gg, mouseX, mouseY);
    }

    // ----------------- Ввод мыши -----------------
    @Override
    public boolean mouseClicked(double mouseX, double mouseY, int button) {
        if (button == 0) {
            if (isHovering(btnPlay, mouseX, mouseY)) {
                togglePlayPause();
                return true;
            }
            if (isHovering(btnVolKnob, mouseX, mouseY)) {
                // ЛКМ по крутилке — мгновенно ~50%
                setVolume01(0.5f);
                return true;
            }
            if (isHovering(btnStub2, mouseX, mouseY)) {
                toggleSpecMode();
                return true;
            }

        }
        return super.mouseClicked(mouseX, mouseY, button);
    }

    @Override
    public boolean mouseScrolled(double mouseX, double mouseY, double delta) {
        int sign = (delta > 0) ? 1 : -1;

        if (isHovering(btnVolKnob, mouseX, mouseY)) {
            // Громкость по колесику
            setVolume01(volume01 + sign * 0.05f);
            return true;
        }
        if (isHovering(btnList, mouseX, mouseY)) {
            int n = (SIGNALS != null) ? SIGNALS.size() : 0;
            if (n > 0) {
                // колесо вверх -> предыдущий; вниз -> следующий
                selectedIndex = (selectedIndex - sign) % n;
                if (selectedIndex < 0) selectedIndex += n;
                ensureFirstSeenFor(selectedIndex);

                // держим выбранный в видимой зоне, но без «прокрутки всего списка»
                int vis = visibleListRows();
                int top = listScroll;
                int bottom = listScroll + vis - 1;
                if (selectedIndex < top) listScroll = selectedIndex;
                if (selectedIndex > bottom) listScroll = selectedIndex - (vis - 1);
                clampIndices();
            }
            return true;
        }
        return super.mouseScrolled(mouseX, mouseY, delta);
    }

    @Override
    public void onClose() {
        super.onClose();
        savePersistent();
    }

    // ----------------- Рисовач -----------------
    private void drawScreenFrameAndGrid(GuiGraphics gg) {
        int x = SCREEN_X, y = SCREEN_Y, w = SCREEN_W, h = SCREEN_H;

        // Чёрное поле + тонкая рамка
        gg.fill(x, y, x + w, y + h, 0xFF000000);
        gg.renderOutline(x, y, w, h, 0xFF7F7F7F);

        // Сетка 2x2
        int midX = x + w / 2;
        int midY = y + h / 2;
        gg.vLine(midX, y, y + h, 0xFF7F7F7F);
        gg.hLine(x, x + w, midY, 0xFF7F7F7F);
    }
    private static class SpecData {
        int sampleRate;
        float secondsPerFrame;
        float[][] bands; // [frameIndex][band] значения 0..1
    }


    private void drawSignalList(GuiGraphics gg, IntRect r) {
        // Заголовок
        gg.drawString(this.font, I18n.get("signalmanager.ui.playback.list_title"), r.x + 8, r.y + 6, 0xFFFFFFFF, false);

        int rowH = 32;
        int top = r.y + 8 + 12;
        int visible = Math.max(1, (r.h - 24) / rowH);

        for (int i = 0; i < visible; i++) {
            int idx = listScroll + i;
            if (idx >= SIGNALS.size()) break;
            SignalEntry s = SIGNALS.get(idx);

            int y0 = top + i * rowH;
            int y1 = y0 + rowH - 2;

            int bg = (idx == selectedIndex) ? 0x4020A0FF : 0x20101010;
            gg.fill(r.x + 4, y0, r.x + r.w - 4, y1, bg);

            // № внутри UI
            String num = String.valueOf(idx + 1);
            gg.drawString(this.font, num, r.x + 8, y0 + 4, 0xFFBBBBBB, false);

            // Имя объекта (локализация по object_name)
            String objName = s.objectNameKey != null ? I18n.get(s.objectNameKey) : s.name;
            if (objName == null || objName.isBlank()) objName = s.name != null ? s.name : "—";

            gg.drawString(this.font, objName, r.x + 28, y0 + 4, 0xFFFFFFFF, false);

            // Дата первого попадания на панель (сохранённая)
            String date = firstSeenDates.getOrDefault(s.id, "");
            gg.drawString(this.font, date, r.x + 28, y0 + 4 + this.font.lineHeight + 2, 0xFF888888, false);
        }

        // Скролл-индикатор
        int total = Math.max(1, SIGNALS.size());
        int barH = 36;
        int barY = r.y + (int) Math.round((r.h - barH) * (listScroll / (double) Math.max(1, total - 1)));
        gg.fill(r.x + r.w - 6, r.y + 4, r.x + r.w - 4, r.y + r.h - 4, 0x30202020);
        gg.fill(r.x + r.w - 6, barY, r.x + r.w - 4, barY + barH, 0x80FFFFFF);
    }

    private void drawSignalImageProgressive(GuiGraphics gg, IntRect r) {
        SignalEntry s = getSelected();
        if (s == null || s.imageRaw == null) {
            centerLabel(gg, r, "NO IMAGE");
            return;
        }

        // Лог один раз при смене картинки
        if (dbgLastImage != s.imageRaw) {
            boolean exists = resourceExists(s.imageRaw);
            CHAT("IMG: rl=" + s.imageRaw +
                    " exists=" + exists +
                    " sizeHint=" + s.imageRawWidth + "x" + s.imageRawHeight +
                    " (expected file: assets/" + s.imageRaw.getNamespace() + "/" + s.imageRaw.getPath() + ")");
            dbgLastImage = s.imageRaw;
        }

        // Прогресс проявления сверху-вниз
        double dur = getUiDurationSec(isAudioActive());
        double t   = clamp01(playProgressSec / Math.max(0.1, dur));

        // Исходный размер (хинт) — если не задан, берём 352x288
        int srcW = s.imageRawWidth  > 0 ? s.imageRawWidth  : 352;
        int srcH = s.imageRawHeight > 0 ? s.imageRawHeight : 288;

        // Вписываем в секцию
        int pad = 6;
        int availW = Math.max(1, r.w - pad * 2);
        int availH = Math.max(1, r.h - pad * 2);

        float scale = Math.min(availW / (float) srcW, availH / (float) srcH);
        int drawW = Math.max(1, Math.round(srcW * scale));
        int drawH = Math.max(1, Math.round(srcH * scale));

        int dx = r.x + (r.w - drawW) / 2;
        int dy = r.y + (r.h - drawH) / 2;

        // Высота видимой части по прогрессу
        int cutH    = Math.max(1, (int)Math.round(drawH * t));
        int texCutH = Math.max(1, (int)Math.round(srcH * t));

        // Фон
        gg.fill(r.x + 1, r.y + 1, r.x + r.w - 1, r.y + r.h - 1, 0xFF000000);

        if (resourceExists(s.imageRaw)) {
            // Рисуем верхнюю часть текстуры
            RenderSystem.setShaderColor(1f, 1f, 1f, 1f);
            // GuiGraphics.blit(ResourceLocation, x, y, u, v, width, height, texW, texH)
            gg.blit(s.imageRaw, dx, dy, 0, 0, drawW, cutH, srcW, srcH);

            // Лёгкий лог на ключевых этапах (0% и 100%), чтобы не спамить
            if (t <= 0.0001 || Math.abs(t - 1.0) <= 0.0001) {
                CHAT("IMG draw: " + s.imageRaw + " dst=" + drawW + "x" + cutH +
                        " of " + srcW + "x" + srcH + " at " + dx + "," + dy + " (t=" + FMT(t) + ")");
            }
        } else {
            centerLabel(gg, r, "IMAGE NOT FOUND");
        }

        gg.renderOutline(dx, dy, drawW, drawH, 0xFF404040);
    }


    private void drawSpectrogram(GuiGraphics gg, IntRect r) {
        // фон
        gg.fill(r.x + 1, r.y + 1, r.x + r.w - 1, r.y + r.h - 1, 0xFF000000);

        // подготовим данные
        SignalEntry s = getSelected();
        SpecData sd = (s != null) ? specCacheById.get(s.id) : null;

        // если надо – подскажем в лог, что нет кэша
        if ((specMode == SpecMode.HEAT) && sd == null && s != null && s.soundRawId != null) {
            CHAT("Heatmap: no spectrum cached for id=" + s.id + " (will build on play).");
        }

        // геометрия области
        int pad   = 6;
        int w     = Math.max(1, r.w - pad * 2);
        int h     = Math.max(1, r.h - pad * 2);
        int xLeft = r.x + pad;
        int yTop  = r.y + pad;
        int yBot  = yTop + h;

        if (specMode == SpecMode.BARS) {
            // ===== РЕЖИМ BARS (как был, но компактно) =====
            float[] tgt = null;
            if (sd != null && (isPlaying || isAudioActive())) {
                int fi = (int) Math.floor(playProgressSec / Math.max(1e-4f, sd.secondsPerFrame));
                if (fi < 0) fi = 0;
                if (fi >= sd.bands.length) fi = sd.bands.length - 1;
                if (fi >= 0) tgt = sd.bands[fi];
            } else if (isPlaying && sd == null) {
                CHAT("Spectrum cache missing for id=" + (s != null ? s.id : -1) + " (will build on play).");
            }

            for (int b = 0; b < SPEC_BANDS; b++) {
                float t = (tgt != null && b < tgt.length) ? tgt[b] : 0f;
                if (t > specNow[b]) {
                    specNow[b] += (t - specNow[b]) * 0.35f; // рост быстрее
                } else {
                    specNow[b] = specNow[b] * SPEC_DECAY + t * (1f - SPEC_DECAY); // плавный спад
                }
                if (tgt == null) specNow[b] *= SPEC_DECAY;
            }

            int bandW = Math.max(2, w / SPEC_BANDS);
            int gap   = Math.max(1, Math.min(2, bandW / 6));
            for (int i = 0; i < SPEC_BANDS; i++) {
                float v = Math.max(0f, Math.min(1f, specNow[i]));
                int bh = (int) Math.round(h * v);
                int x0 = xLeft + i * bandW;
                int x1 = x0 + bandW - gap;
                if (x1 <= x0) x1 = x0 + 1;
                gg.fill(x0, yBot - bh, x1, yBot, gradientColor(i));
            }

            gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);
            return;
        }

        // ===== РЕЖИМ HEAT (2D spectrogram, слева-направо) =====
        if (sd == null || sd.bands == null || sd.bands.length == 0) {
            centerLabel(gg, r, "NO SPECTRUM");
            gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);
            return;
        }

        final int frames = sd.bands.length;
        final int cols   = w;                 // по одному столбику на пиксель
        int maxFrameVisible;
        if (isPlaying || isAudioActive()) {
            int cur = (int)Math.floor(playProgressSec / Math.max(1e-4f, sd.secondsPerFrame));
            maxFrameVisible = Math.max(0, Math.min(frames - 1, cur));
        } else {
            maxFrameVisible = frames - 1;     // не играем — отображаем всю картинку
        }
        int drawCols = Math.max(1, (int)Math.ceil(((maxFrameVisible + 1) / (float)frames) * cols));

        // высота ячейки по полосам (низкие частоты внизу)
        int cellH = Math.max(1, h / SPEC_BANDS);

        for (int cx = 0; cx < drawCols; cx++) {
            // соответствующий кадр спектра этому x
            int fi = (int)Math.floor((cx / (float)Math.max(1, cols - 1)) * (frames - 1));
            float[] row = sd.bands[fi];

            int x0 = xLeft + cx;
            int x1 = x0 + 1;

            for (int b = 0; b < SPEC_BANDS; b++) {
                float amp = (row != null && b < row.length) ? row[b] : 0f;   // 0..1
                // лёгкая гамма для читаемости
                float bright = (float)Math.sqrt(Math.max(0f, Math.min(1f, amp)));
                int base = gradientColor(b);
                int col  = scaleColor(base, bright);

                int y0 = yTop + (SPEC_BANDS - 1 - b) * cellH;
                int y1 = Math.min(y0 + cellH, yBot);
                gg.fill(x0, y0, x1, y1, col);
            }
        }

        // справа от «фронта» — чёрная область (заполнение слева-направо)
        if (drawCols < cols) {
            gg.fill(xLeft + drawCols, yTop, xLeft + cols, yBot, 0xFF000000);
        }

        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);
    }



    private void drawTextBlockProgressive(GuiGraphics gg, IntRect r) {
        SignalEntry s = getSelected();
        if (s == null || s.textRawKey == null || s.textRawKey.isBlank()) {
            centerLabel(gg, r, "—");
            return;
        }
        String full = I18n.get(s.textRawKey);
        if (full == null) full = s.textRawKey;

        // Порог символов по прогрессу
        double dur = getUiDurationSec(isAudioActive());
        double t   = clamp01(playProgressSec / Math.max(0.1, dur));
        int maxChars = (int) Math.round(full.length() * t);
        if (maxChars <= 0) {
            centerLabel(gg, r, "");
            return;
        }
        String part = full.substring(0, Math.min(maxChars, full.length()));

        // Примитивный перенос по словам
        int pad = 8;
        int rw = r.w - pad * 2;
        int x  = r.x + pad;
        int y  = r.y + pad;

        gg.fill(r.x + 1, r.y + 1, r.x + r.w - 1, r.y + r.h - 1, 0xFF000000);

        for (String line : wrapText(part, rw)) {
            gg.drawString(this.font, line, x, y, 0xFFFFFFFF, false);
            y += this.font.lineHeight + 2;
            if (y > r.y + r.h - pad - this.font.lineHeight) break;
        }
        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);
    }

    private void drawBottomButtons(GuiGraphics gg) {
        // Подложка панельки
        int bx = SCREEN_X + 4;
        int by = BTN_BAR_Y - 6;

        // Иконки/подписи
        drawKnob(gg, btnVolKnob, volume01, 0xFFB0FFB0, "VOL");
        drawButtonLabel(gg, btnList, "LIST", 0xFFE0E0E0);
        drawButtonLabel(gg, btnStub2,
                (specMode == SpecMode.BARS ? "HEAT" : "BARS"), 0xFFE0E0E0);
        drawButtonLabel(gg, btnPlay, isPlaying ? "PAUSE" : "PLAY", 0xFFE0FFE0);
        drawButtonLabel(gg, btnStub4, "—", 0xFF808080);

        if (DEBUG_BUTTONS) {
            debugRect(gg, btnVolKnob, 0x40FFFF00);
            debugRect(gg, btnList,    0x40FFFFFF);
            debugRect(gg, btnStub2,   0x4020FFFF);
            debugRect(gg, btnPlay,    0x4000FF00);
            debugRect(gg, btnStub4,   0x4020FFFF);
        }
    }

    // ----------------- Воспроизведение -----------------
    private void togglePlayPause() {
        if (isPlaying) {
            stopPlayback();
        } else {
            startPlayback();
        }
    }

    private void toggleSpecMode() {
        specMode = (specMode == SpecMode.BARS) ? SpecMode.HEAT : SpecMode.BARS;
        CHAT("Spectrogram mode: " + (specMode == SpecMode.BARS ? "BARS" : "HEAT"));
        // при смене режима слегка «очистим» текущую картинку
        java.util.Arrays.fill(specNow, 0f);
    }


    private void startPlayback() {
        SignalEntry s = getSelected();
        if (s == null || s.soundRawId == null) return;

        SoundEvent se = resolveSound(s.soundRawId);
        if (se == null) return;
        final ResourceLocation eventId = BuiltInRegistries.SOUND_EVENT.getKey(se);


        // Узнаём длину именно для ЭТОГО сигнала
        double known = measuredDurSecById.getOrDefault(s.id, -1.0);
        if (!(known > 0.0)) {
            double d = probeOggDurationSec(eventId);
            if (d > 0.0 && Double.isFinite(d)) {
                measuredDurSecById.put(s.id, d);
                CHAT("[PanelPlayback] Cached length for id=" + s.id + " = " + FMT(d) + "s");
            } else {
                measuredDurSecById.put(s.id, FALLBACK_DURATION_SEC);
                CHAT("[PanelPlayback] Using fallback duration = " + FMT(FALLBACK_DURATION_SEC) + "s for id=" + s.id);
            }
        }
// Спектр обязательно: и при первом, и при последующих запусках (после рестарта игры карта пустая)
        if (!specCacheById.containsKey(s.id)) {
            SpecData sd = buildSpectrumFor(eventId);
            if (sd != null) {
                specCacheById.put(s.id, sd);
                CHAT("Spectrum cached: id=" + s.id + ", frames=" + sd.bands.length + ", sr=" + sd.sampleRate);
            } else {
                CHAT("Spectrum build FAILED for " + eventId);
            }
        }
// сброс текущих столбиков перед новым проигрыванием
        java.util.Arrays.fill(specNow, 0f);


        stopPlayback(); // гарантированно один инстанс

        activeSound = new PlaybackSound(se, () -> volume01);
        Minecraft.getInstance().getSoundManager().play(activeSound);

        isPlaying = true;
        awaitingActivation = true;
        playStartTimeSec = nowSec(); // скорректируем на момент активации
        playProgressSec = 0.0;
    }

    private void stopPlayback() {
        if (activeSound != null) {
            // мы в своём инстансе вызовем stop() через флаг
            activeSound.requestStop();
            // и попросим менеджер звуков принудительно прекратить
            Minecraft.getInstance().getSoundManager().stop(activeSound);
            activeSound = null;
        }
        isPlaying = false;
    }

    /** Полный пересчёт прогресса и фиксация фактической длительности при естественном окончании звука. */
    private void tickPlaybackProgress() {
        if (!isPlaying) return;

        Minecraft mc = Minecraft.getInstance();
        if (mc == null) {
            isPlaying = false;
            activeSound = null;
            return;
        }

        boolean active = (activeSound != null) && mc.getSoundManager().isActive(activeSound);

        // ждём фактического старта
        if (awaitingActivation) {
            if (active) {
                playStartTimeSec = nowSec();
                playProgressSec = 0.0;
                awaitingActivation = false;
                CHAT("[PanelPlayback] Sound activated; planned UI duration = " + FMT(getUiDurationSec(true)) + "s");
            } else {
                playProgressSec = 0.0;
                return;
            }
        }

        // обновляем прогресс
        playProgressSec = Math.max(0.0, nowSec() - playStartTimeSec);

        // визуальный лимит по известной длине
        SignalEntry s = getSelected();
        int sid = (s != null) ? s.id : -1;
        double known = (sid >= 0) ? measuredDurSecById.getOrDefault(sid, -1.0) : -1.0;
        double dur   = (known > 0.0 && Double.isFinite(known)) ? known : FALLBACK_DURATION_SEC;
        if (Double.isFinite(dur) && playProgressSec > dur) {
            playProgressSec = dur;
        }

        // окончание
        if (!active) {
            double actual = Math.max(0.05, playProgressSec);
            if (sid >= 0) {
                boolean unknown = !(known > 0.0 && Double.isFinite(known));
                boolean differs = !(Math.abs(known - actual) <= 0.08);
                if (unknown || differs) {
                    measuredDurSecById.put(sid, actual);
                    CHAT("[PanelPlayback] Measured actual length for id=" + sid + " = " + FMT(actual) +
                            "s (was " + (known > 0 ? FMT(known) + "s" : "unknown") + ")");
                }
            }
            isPlaying = false;
            awaitingActivation = false;
            activeSound = null;
            playProgressSec = Math.min(playProgressSec, (sid >= 0 ? measuredDurSecById.getOrDefault(sid, dur) : dur));
            savePersistent();
        }
    }


    // ----------------- Утилиты отрисовки -----------------
    private void drawKnob(GuiGraphics gg, IntRect r, float value01, int color, String label) {
        // кружок
        gg.fill(r.x, r.y, r.x + r.w, r.y + r.h, 0xFF101010);
        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);

        // стрелочка по value
        double ang = Math.toRadians(225 * (value01 - 0.5f)); // эстетика
        int cx = r.centerX();
        int cy = r.centerY();
        int len = Math.min(r.w, r.h) / 2 - 3;
        int x2 = (int) Math.round(cx + len * Math.cos(ang));
        int y2 = (int) Math.round(cy + len * Math.sin(ang));
        drawThickLine(gg, cx, cy, x2, y2, 1, color);

        // подпись
        int tw = this.font.width(label);
        gg.drawString(this.font, label, r.x + (r.w - tw) / 2, r.y + r.h + 2, 0xFFB0B0B0, false);
    }

    private void drawButtonLabel(GuiGraphics gg, IntRect r, String text, int color) {
        gg.fill(r.x, r.y, r.x + r.w, r.y + r.h, 0xFF1A1A1A);
        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);
        int tw = this.font.width(text);
        gg.drawString(this.font, text, r.x + (r.w - tw) / 2, r.y + (r.h - this.font.lineHeight) / 2, color, false);
    }

    private void debugRect(GuiGraphics gg, IntRect r, int color) {
        gg.fill(r.x, r.y, r.x + r.w, r.y + r.h, color);
        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFFFFFFFF);
    }

    private void drawThickLine(GuiGraphics gg, int x0, int y0, int x1, int y1, int thickness, int color) {
        int dx = Math.abs(x1 - x0);
        int dy = Math.abs(y1 - y0);
        int sx = x0 < x1 ? 1 : -1;
        int sy = y0 < y1 ? 1 : -1;
        int err = dx - dy;

        while (true) {
            gg.fill(x0 - thickness, y0 - thickness, x0 + thickness, y0 + thickness, color);
            if (x0 == x1 && y0 == y1) break;
            int e2 = 2 * err;
            if (e2 > -dy) { err -= dy; x0 += sx; }
            if (e2 < dx)  { err += dx; y0 += sy; }
        }
    }

    private void centerLabel(GuiGraphics gg, IntRect r, String text) {
        int tw = this.font.width(text);
        gg.drawString(this.font, text, r.x + (r.w - tw) / 2, r.y + (r.h - this.font.lineHeight) / 2, 0xFF808080, false);
        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);
    }

    private boolean isHovering(IntRect r, double mouseX, double mouseY) {
        if (mouseX < guiX || mouseY < guiY ||
                mouseX >= guiX + guiScale * VIRTUAL_W ||
                mouseY >= guiY + guiScale * VIRTUAL_H) {
            return false;
        }
        double vx = (mouseX - guiX) / guiScale;
        double vy = (mouseY - guiY) / guiScale;
        return r.contains((int) Math.floor(vx), (int) Math.floor(vy));
    }

    private boolean isHoveringList(double mouseX, double mouseY) {
        return isHovering(cellRect(0), mouseX, mouseY);
    }

    private IntRect cellRect(int index) {
        int col = index % GRID_COLS;
        int row = index / GRID_COLS;

        double cw = SCREEN_W / (double) GRID_COLS;
        double rh = SCREEN_H / (double) GRID_ROWS;

        int x = SCREEN_X + (int) Math.round(col * cw);
        int y = SCREEN_Y + (int) Math.round(row * rh);
        int x2 = SCREEN_X + (int) Math.round((col + 1) * cw);
        int y2 = SCREEN_Y + (int) Math.round((row + 1) * rh);

        return new IntRect(x, y, Math.max(0, x2 - x), Math.max(0, y2 - y));
    }

    // ----------------- Загрузка / сохранение -----------------
    private void loadPersistent() {
        var mc = Minecraft.getInstance();
        if (mc.player == null) return;
        var tag = mc.player.getPersistentData();
        if (!tag.contains("thisnotamod_panel_playback")) return;

        var root = tag.getCompound("thisnotamod_panel_playback");
        listScroll = root.contains("listScroll") ? root.getInt("listScroll") : 0;
        selectedIndex = root.contains("selectedIndex") ? root.getInt("selectedIndex") : 0;
        volume01 = root.contains("volume01") ? root.getFloat("volume01") : 1.0f;
        if (root.contains("specMode")) {
            int m = root.getInt("specMode");
            specMode = (m == 1) ? SpecMode.HEAT : SpecMode.BARS;
        }


        firstSeenDates.clear();
        if (root.contains("firstSeen")) {
            var fs = root.getCompound("firstSeen");
            for (String k : fs.getAllKeys()) {
                firstSeenDates.put(parseIntSafe(k, -1), fs.getString(k));
            }
        }

        // durations per signal
        measuredDurSecById.clear();
        if (root.contains("durById")) {
            var dm = root.getCompound("durById");
            for (String k : dm.getAllKeys()) {
                int id = parseIntSafe(k, -1);
                double v = dm.getDouble(k);
                if (id >= 0 && v > 0.0 && Double.isFinite(v)) measuredDurSecById.put(id, v);
            }
        }

        clampIndices();
    }


    private void savePersistent() {
        var mc = Minecraft.getInstance();
        if (mc.player == null) return;
        var tag = mc.player.getPersistentData();

        var root = new net.minecraft.nbt.CompoundTag();
        root.putInt("listScroll", listScroll);
        root.putInt("selectedIndex", selectedIndex);
        root.putFloat("volume01", volume01);

        var fs = new net.minecraft.nbt.CompoundTag();
        for (Map.Entry<Integer, String> e : firstSeenDates.entrySet()) {
            fs.putString(String.valueOf(e.getKey()), e.getValue());
        }
        root.put("firstSeen", fs);

        // durations per signal
        var dm = new net.minecraft.nbt.CompoundTag();
        for (Map.Entry<Integer, Double> e : measuredDurSecById.entrySet()) {
            Double v = e.getValue();
            if (v != null && v > 0.0 && Double.isFinite(v)) {
                dm.putDouble(String.valueOf(e.getKey()), v);
            }
        }
        root.put("durById", dm);
        root.putInt("specMode", (specMode == SpecMode.HEAT ? 1 : 0));

        tag.put("thisnotamod_panel_playback", root);
    }


    private void ensureFirstSeenDates() {
        // При первом открытии — всем уже видимым сигналам присвоим дату
        int visible = visibleListRows();
        for (int i = 0; i < visible; i++) {
            int idx = listScroll + i;
            if (idx >= SIGNALS.size()) break;
            ensureFirstSeenFor(idx);
        }
    }

    private void ensureFirstSeenFor(int idx) {
        SignalEntry s = (idx >= 0 && idx < SIGNALS.size()) ? SIGNALS.get(idx) : null;
        if (s == null) return;
        if (!firstSeenDates.containsKey(s.id)) {
            firstSeenDates.put(s.id, DATE_FMT.format(LocalDateTime.now()));
        }
    }

    private int visibleListRows() {
        IntRect r = cellRect(0);
        return Math.max(1, (r.h - 24) / 32);
    }

    private void setVolume01(float v) {
        volume01 = clamp01f(v);
        if (activeSound != null) activeSound.setVolumeDynamic(volume01);
    }

    private void clampIndices() {
        if (SIGNALS == null || SIGNALS.isEmpty()) { selectedIndex = 0; listScroll = 0; return; }
        listScroll = clamp(listScroll, 0, Math.max(0, SIGNALS.size() - 1));
        selectedIndex = clamp(selectedIndex, 0, SIGNALS.size() - 1);
    }

    private SignalEntry getSelected() {
        if (SIGNALS == null || SIGNALS.isEmpty()) return null;
        if (selectedIndex < 0 || selectedIndex >= SIGNALS.size()) return null;
        return SIGNALS.get(selectedIndex);
    }

    private static void ensureSignalsLoaded() {
        if (SIGNALS != null) return;
        SIGNALS = new ArrayList<>();
        try (InputStream in = openSignalsJsonStream()) {
            if (in != null) {
                JsonArray arr = JsonParser.parseReader(new InputStreamReader(in, StandardCharsets.UTF_8)).getAsJsonArray();
                for (JsonElement el : arr) {
                    if (!el.isJsonObject()) continue;
                    SIGNALS.add(SignalEntry.fromJson(el.getAsJsonObject()));
                }
            }
        } catch (Exception e) {
            // ignored -> fallback
        }
        if (SIGNALS.isEmpty()) {
            // Fallback — «меркурий» из нулевого элемента
            SignalEntry s = new SignalEntry();
            s.id = 0;
            s.name = "mercury";
            s.size = "0.8160";
            s.weight = 100f;
            s.objectImage = rlOrNull("thisnotamod:mercury_obj");
            s.type = "regular";
            s.objectNameKey = "signalmanager.object_name.0";
            s.specialResponse = false;
            s.specialPrice = true;
            s.imageRaw = toGuiTexture(rlOrNull("thisnotamod:signal_planet_mercury_raw"));
            s.imageRawWidth = 352; s.imageRawHeight = 288;
            s.soundRawId = "CUSTOM:mercury_raw";
            s.priceRaw = "5"; s.priceLow = "10"; s.priceNoisy = "15"; s.priceHigh = "30";
            s.textRawKey = "signalmanager.default_text";
            SIGNALS.add(s);
        }
    }

    // Пытаемся открыть /data/thisnotamod/signals.json из JAR или ресурсов
    private static InputStream openSignalsJsonStream() {
        // 1) Прямой ресурс из JAR
        InputStream in = PanelPlaybackScreen.class.getResourceAsStream("/data/thisnotamod/signals.json");
        if (in != null) return in;

        // 2) Через клиентский ResourceManager (если вдруг файл положен иначе)
        try {
            var mc = Minecraft.getInstance();
            if (mc != null && mc.getResourceManager() != null) {
                var opt = mc.getResourceManager().getResource(new ResourceLocation("thisnotamod", "signals.json"));
                if (opt.isPresent()) {
                    return opt.get().open();
                }
            }
        } catch (Exception ignored) { }

        return null;
    }

    // ----------------- Вспомогательные типы/методы -----------------
    private static class IntRect {
        final int x, y, w, h;
        IntRect(int x, int y, int w, int h) { this.x = x; this.y = y; this.w = w; this.h = h; }
        int centerX() { return x + w / 2; }
        int centerY() { return y + h / 2; }
        boolean contains(int mx, int my) { return mx >= x && mx < x + w && my >= y && my < y + h; }
    }

    private static class SignalEntry {
        int id;
        String name;
        String size;
        float weight;
        ResourceLocation objectImage;
        String type;
        String objectNameKey;
        boolean specialResponse;
        boolean specialPrice;

        ResourceLocation imageRaw;
        int imageRawWidth = 352;
        int imageRawHeight = 288;

        String soundRawId;

        String priceRaw, priceLow, priceNoisy, priceHigh;

        String textRawKey;

        static SignalEntry fromJson(JsonObject o) {
            SignalEntry s = new SignalEntry();
            s.id = o.has("id") ? o.get("id").getAsInt() : 0;
            s.name = getAsString(o, "name", "unknown");
            s.size = getAsString(o, "size", "1.0");
            s.weight = (float) getAsDouble(o, "weight", 1.0);
            s.objectImage = rlOrNull(getAsString(o, "object_image", null));
            s.type = getAsString(o, "type", "regular");
            s.objectNameKey = getAsString(o, "object_name", "");
            s.specialResponse = getAsBoolean(o, "special_response", false);
            s.specialPrice = getAsBoolean(o, "special_price", false);

            s.imageRaw = toGuiTexture(rlOrNull(getAsString(o, "image_high", null)));
            // на случай, если где-то есть размеры
            s.imageRawWidth = 352;
            s.imageRawHeight = 288;

            s.soundRawId = getAsString(o, "sound_high", null);

            s.priceRaw = getAsString(o, "price_raw", "");
            s.priceLow = getAsString(o, "price_low", "");
            s.priceNoisy = getAsString(o, "price_noisy", "");
            s.priceHigh = getAsString(o, "price_high", "");

            s.textRawKey = getAsString(o, "text_raw", "");
            return s;
        }

        private static String getAsString(JsonObject o, String k, String def) {
            return o.has(k) && !o.get(k).isJsonNull() ? o.get(k).getAsString() : def;
        }
        private static double getAsDouble(JsonObject o, String k, double def) {
            return o.has(k) && !o.get(k).isJsonNull() ? o.get(k).getAsDouble() : def;
        }
        private static boolean getAsBoolean(JsonObject o, String k, boolean def) {
            return o.has(k) && !o.get(k).isJsonNull() && o.get(k).getAsBoolean();
        }
    }

    private static ResourceLocation rlOrNull(String s) {
        if (s == null || s.isBlank()) return null;
        try {
            // допускаем формат "namespace:path"
            if (s.contains(":")) return new ResourceLocation(s);
            return new ResourceLocation("thisnotamod", s);
        } catch (Exception e) { return null; }
    }

    // Преобразует id события звука (namespace:path) → файл в ресурсах assets/<ns>/sounds/<path>.ogg
    private static ResourceLocation soundEventIdToFile(ResourceLocation eventId) {
        if (eventId == null) return null;
        String p = eventId.getPath();
        if (p.startsWith("sounds/")) p = p.substring("sounds/".length());
        if (p.endsWith(".ogg")) p = p.substring(0, p.length() - 4);
        return new ResourceLocation(eventId.getNamespace(), "sounds/" + p + ".ogg");
    }

    // Пробуем вычитать длительность конкретного файла <ns>:<path>.ogg
    private static double tryProbeOgg(ResourceLocation fileRl) {
        try {
            var mc = Minecraft.getInstance();
            if (mc == null || mc.getResourceManager() == null || fileRl == null) return -1.0;

            var opt = mc.getResourceManager().getResource(fileRl);
            if (opt.isEmpty()) { CHAT("Resource not found: " + fileRl); return -1.0; }

            ByteBuffer data = null;
            try (InputStream in = opt.get().open()) {
                data = readAllToBuffer(in);
                if (data == null || !data.hasRemaining()) { CHAT("Empty buffer for " + fileRl); return -1.0; }

                try (org.lwjgl.system.MemoryStack stack = org.lwjgl.system.MemoryStack.stackPush()) {
                    var err = stack.mallocInt(1);
                    long decoder = org.lwjgl.stb.STBVorbis.stb_vorbis_open_memory(data, err, null);
                    if (decoder == org.lwjgl.system.MemoryUtil.NULL) {
                        CHAT("stb_vorbis_open_memory failed (" + err.get(0) + ") for " + fileRl);
                        return -1.0;
                    }

                    org.lwjgl.stb.STBVorbisInfo info = org.lwjgl.stb.STBVorbisInfo.malloc(stack);
                    org.lwjgl.stb.STBVorbis.stb_vorbis_get_info(decoder, info);
                    int sampleRate    = info.sample_rate();
                    int totalSamples  = org.lwjgl.stb.STBVorbis.stb_vorbis_stream_length_in_samples(decoder);
                    org.lwjgl.stb.STBVorbis.stb_vorbis_close(decoder);

                    if (sampleRate <= 0 || totalSamples <= 0) {
                        CHAT("Bad vorbis info for " + fileRl + " (rate=" + sampleRate + ", samples=" + totalSamples + ")");
                        return -1.0;
                    }
                    double lenSec = (double) totalSamples / (double) sampleRate;
                    CHAT("Probed OGG \"" + fileRl + "\" length = " + FMT(lenSec) + "s");
                    return lenSec;
                }
            } finally {
                if (data != null) org.lwjgl.system.MemoryUtil.memFree(data);
            }
        } catch (Exception e) {
            CHAT("tryProbeOgg exception for " + fileRl + ": " + e.getClass().getSimpleName());
            return -1.0;
        }
    }

    // Пытаемся найти фактический файл звука через sounds.json (берём первый вариант в массиве "sounds")
    private static ResourceLocation soundFileFromSoundsJson(ResourceLocation eventId) {
        try {
            var mc = Minecraft.getInstance();
            if (mc == null || mc.getResourceManager() == null || eventId == null) return null;

            ResourceLocation soundsJson = new ResourceLocation(eventId.getNamespace(), "sounds.json");
            var opt = mc.getResourceManager().getResource(soundsJson);
            if (opt.isEmpty()) { CHAT("sounds.json not found for ns=" + eventId.getNamespace()); return null; }

            try (InputStream in = opt.get().open()) {
                JsonObject root = JsonParser.parseReader(new InputStreamReader(in, StandardCharsets.UTF_8)).getAsJsonObject();
                if (!root.has(eventId.getPath())) return null;

                JsonObject entry = root.getAsJsonObject(eventId.getPath());
                if (entry == null || !entry.has("sounds")) return null;

                JsonElement soundsEl = entry.get("sounds");
                if (!soundsEl.isJsonArray()) return null;
                for (JsonElement e : soundsEl.getAsJsonArray()) {
                    String name = null;
                    if (e.isJsonPrimitive() && e.getAsJsonPrimitive().isString()) {
                        name = e.getAsString();
                    } else if (e.isJsonObject()) {
                        JsonObject o = e.getAsJsonObject();
                        if (o.has("name")) name = o.get("name").getAsString();
                    }
                    if (name == null || name.isBlank()) continue;

                    ResourceLocation rlName = name.contains(":")
                            ? new ResourceLocation(name)
                            : new ResourceLocation(eventId.getNamespace(), name);

                    String p = rlName.getPath();
                    if (p.startsWith("sounds/")) p = p.substring("sounds/".length());
                    ResourceLocation fileRl = new ResourceLocation(rlName.getNamespace(), "sounds/" + p + ".ogg");
                    CHAT("sounds.json mapped " + eventId + " -> " + fileRl);
                    return fileRl;
                }
            }
        } catch (Exception ex) {
            CHAT("soundFileFromSoundsJson exception: " + ex.getClass().getSimpleName());
        }
        return null;
    }


    // Возвращает длительность OGG (сек) или -1, если не удалось
    private static double probeOggDurationSec(ResourceLocation soundEventId) {
        try {
            var mc = Minecraft.getInstance();
            if (mc == null || mc.getResourceManager() == null || soundEventId == null) return -1.0;

            // 1) Прямой путь предположением: <ns>:sounds/<eventPath>.ogg
            ResourceLocation direct = soundEventIdToFile(soundEventId);
            double d1 = tryProbeOgg(direct);
            if (d1 > 0) { CHAT("Probed via direct path: " + direct + " = " + FMT(d1) + "s"); return d1; }

            CHAT("Direct path failed for " + soundEventId + ", trying sounds.json mapping…");

            // 2) Через sounds.json (первый вариант в "sounds")
            ResourceLocation mapped = soundFileFromSoundsJson(soundEventId);
            if (mapped != null) {
                double d2 = tryProbeOgg(mapped);
                if (d2 > 0) { CHAT("Probed via sounds.json: " + mapped + " = " + FMT(d2) + "s"); return d2; }
                CHAT("sounds.json mapping exists but probe failed for " + mapped);
            } else {
                CHAT("No sounds.json mapping for " + soundEventId);
            }

            return -1.0;
        } catch (Exception e) {
            CHAT("probeOggDurationSec exception: " + e.getClass().getSimpleName());
            return -1.0;
        }
    }


    // Читает весь InputStream в ByteBuffer (и выделяет нативную память под него)
    private static ByteBuffer readAllToBuffer(InputStream in) throws java.io.IOException {
        byte[] bytes = in.readAllBytes();
        if (bytes == null || bytes.length == 0) return null;
        ByteBuffer buf = MemoryUtil.memAlloc(bytes.length);
        buf.put(bytes);
        buf.flip();
        return buf;
    }



    private static ResourceLocation toGuiTexture(ResourceLocation rl) {
        if (rl == null) return null;
        String ns = rl.getNamespace();
        String p  = rl.getPath();

        // Уже полный путь "textures/.../*.png"
        if (p.startsWith("textures/")) {
            if (!p.endsWith(".png")) p = p + ".png";
            return new ResourceLocation(ns, p);
        }

        // Если есть подкаталог ("screens/foo" и т.п.) — кладём под textures/<subdir>/...
        if (p.contains("/")) {
            p = "textures/" + p;
        } else {
            // По умолчанию — папка экранов
            p = "textures/screens/" + p;
        }

        if (!p.endsWith(".png")) p = p + ".png";
        return new ResourceLocation(ns, p);
    }



    private static boolean resourceExists(ResourceLocation rl) {
        try {
            var mc = Minecraft.getInstance();
            return mc != null && mc.getResourceManager() != null && rl != null
                    && mc.getResourceManager().getResource(rl).isPresent();
        } catch (Exception e) {
            return false;
        }
    }


    private static SoundEvent resolveSound(String id) {
        if (id == null) return null;
        String norm = id;
        if (norm.startsWith("CUSTOM:") || norm.startsWith("custom:")) {
            norm = "thisnotamod:" + norm.substring(norm.indexOf(':') + 1);
        }
        ResourceLocation rl = rlOrNull(norm);
        if (rl == null) return null;
        return BuiltInRegistries.SOUND_EVENT.getOptional(rl).orElse(null);
    }

    private static String[] wrapText(String text, int maxWidth) {
        if (text == null || text.isEmpty()) return new String[0];
        Minecraft mc = Minecraft.getInstance();
        if (mc == null) return new String[]{ text };
        List<String> out = new ArrayList<>();
        StringBuilder line = new StringBuilder();
        for (String word : text.split("\\s+")) {
            String tryLine = line.length() == 0 ? word : line + " " + word;
            if (mc.font.width(tryLine) > maxWidth) {
                if (line.length() > 0) out.add(line.toString());
                line.setLength(0);
                line.append(word);
            } else {
                line.setLength(0);
                line.append(tryLine);
            }
        }
        if (line.length() > 0) out.add(line.toString());
        return out.toArray(new String[0]);
    }

    private static int clamp(int v, int min, int max) { return Math.max(min, Math.min(max, v)); }
    private static float clamp01f(float v) { return Math.max(0f, Math.min(1f, v)); }
    private static double clamp01(double v) { return Math.max(0.0, Math.min(1.0, v)); }
    private static int parseIntSafe(String s, int def) { try { return Integer.parseInt(s); } catch (Exception e) { return def; } }
    private static double nowSec() { return System.nanoTime() / 1.0e9; }

    /** Активен ли проигрываемый инстанс в SoundManager прямо сейчас. */
    private boolean isAudioActive() {
        Minecraft mc = Minecraft.getInstance();
        return activeSound != null && mc != null && mc.getSoundManager().isActive(activeSound);
    }

private double getPlannedDurationSecFor(int id) {
    double d = measuredDurSecById.getOrDefault(id, -1.0);
    return (d > 0.0 && Double.isFinite(d)) ? d : FALLBACK_DURATION_SEC;
}

private double getUiDurationSec(boolean active) {
    SignalEntry s = getSelected();
    int id = (s != null) ? s.id : -1;
    double planned = (id >= 0) ? getPlannedDurationSecFor(id) : FALLBACK_DURATION_SEC;
    if (active && playProgressSec + 0.001 >= planned) {
        return playProgressSec + 0.25; // маленький запас под буферы
    }
    return planned;
}

    // Построить спектр для события звука. Пробуем прямой путь и через sounds.json.
    private SpecData buildSpectrumFor(ResourceLocation eventId) {
        try {
            var mc = Minecraft.getInstance();
            if (mc == null || mc.getResourceManager() == null || eventId == null) return null;

            // 1) предполагаемый файл
            ResourceLocation fileRl = soundEventIdToFile(eventId);
            var opt = mc.getResourceManager().getResource(fileRl);
            if (opt.isEmpty()) {
                // 2) через sounds.json
                fileRl = soundFileFromSoundsJson(eventId);
                if (fileRl == null) {
                    CHAT("buildSpectrum: no sound file for " + eventId);
                    return null;
                }
                opt = mc.getResourceManager().getResource(fileRl);
                if (opt.isEmpty()) {
                    CHAT("buildSpectrum: resource not found " + fileRl);
                    return null;
                }
            }

            ByteBuffer data;
            try (InputStream in = opt.get().open()) {
                data = readAllToBuffer(in);
            }
            if (data == null || !data.hasRemaining()) {
                CHAT("buildSpectrum: empty buffer for " + fileRl);
                return null;
            }

            try (MemoryStack stack = MemoryStack.stackPush()) {
                IntBuffer chBuf   = stack.mallocInt(1);
                IntBuffer rateBuf = stack.mallocInt(1);

                ShortBuffer pcm = STBVorbis.stb_vorbis_decode_memory(data, chBuf, rateBuf);
                if (pcm == null) {
                    CHAT("buildSpectrum: stb_vorbis_decode_memory failed for " + fileRl);
                    return null;
                }

                int channels = Math.max(1, chBuf.get(0));
                int rate     = Math.max(8000, rateBuf.get(0));

                int frames = pcm.remaining() / channels;
                float[] mono = new float[frames];
                for (int i = 0; i < frames; i++) {
                    int sum = 0;
                    int base = i * channels;
                    for (int c = 0; c < channels; c++) sum += pcm.get(base + c);
                    mono[i] = (sum / (32768f * channels));
                }

                float[][] bands = computeBands(mono, rate, FFT_SIZE, SPEC_BANDS);
                SpecData sd = new SpecData();
                sd.sampleRate      = rate;
                sd.secondsPerFrame = (FFT_SIZE / 2f) / rate; // hop = FFT/2
                sd.bands           = bands;
                CHAT("buildSpectrum: frames=" + bands.length + ", sr=" + rate + "Hz for " + eventId);
                return sd;
            } finally {
                MemoryUtil.memFree(data);
            }
        } catch (Throwable t) {
            CHAT("buildSpectrum exception: " + t.getClass().getSimpleName());
            return null;
        }
    }

    // Реальный расчёт спектра -> логарифмические полосы (0..1)
    private static float[][] computeBands(float[] mono, int rate, int fftSize, int bands) {
        int hop = fftSize / 2;
        int total = Math.max(0, (mono.length - fftSize) / hop + 1);
        if (total <= 0) return new float[0][bands];

        // Hann окно
        float[] win = new float[fftSize];
        for (int n = 0; n < fftSize; n++)
            win[n] = (float)(0.5 * (1.0 - Math.cos(2.0 * Math.PI * n / (fftSize - 1))));

        // лог-границы полос
        double fMin = 60.0;
        double fMax = Math.min(rate * 0.5, 18000.0);
        int[] kL = new int[bands];
        int[] kH = new int[bands];
        for (int b = 0; b < bands; b++) {
            double lo = fMin * Math.pow(fMax / fMin, (double) b / bands);
            double hi = fMin * Math.pow(fMax / fMin, (double) (b + 1) / bands);
            int kl = (int) Math.ceil(lo * fftSize / rate);
            int kh = (int) Math.floor(hi * fftSize / rate);
            kl = Math.max(1, Math.min(fftSize / 2, kl));
            kh = Math.max(kl, Math.min(fftSize / 2, kh));
            kL[b] = kl; kH[b] = kh;
        }

        float[] re = new float[fftSize];
        float[] im = new float[fftSize];
        float[][] out = new float[total][bands];

        for (int f = 0; f < total; f++) {
            int off = f * hop;

            // окно + копия
            for (int n = 0; n < fftSize; n++) {
                float v = (off + n < mono.length) ? mono[off + n] : 0f;
                re[n] = v * win[n];
                im[n] = 0f;
            }

            fft(re, im); // комплексное БПФ

            // мощность по полосам
            for (int b = 0; b < bands; b++) {
                double sum = 0.0;
                int cnt = Math.max(1, kH[b] - kL[b] + 1);
                for (int k = kL[b]; k <= kH[b]; k++) {
                    double rr = re[k], ii = im[k];
                    sum += rr * rr + ii * ii;
                }
                double mag = Math.sqrt(sum / cnt);                 // амплитуда
                double db  = 20.0 * Math.log10(1e-12 + mag);       // dB по амплитуде
                float norm = (float)((db - SPEC_DB_FLOOR) / (SPEC_DB_CEIL - SPEC_DB_FLOOR));
                norm = clamp01f(norm * SPEC_GAIN);                 // общий «ослабляющий» гейн
                out[f][b] = norm;
            }
        }
        return out;
    }

    // Быстрое преобразование Фурье (in-place, n = степень двойки)
    private static void fft(float[] re, float[] im) {
        final int n = re.length;
        // bit-reversal
        for (int i = 1, j = 0; i < n; i++) {
            int bit = n >>> 1;
            for (; (j & bit) != 0; bit >>>= 1) j &= ~bit;
            j |= bit;
            if (i < j) {
                float tr = re[i]; re[i] = re[j]; re[j] = tr;
                float ti = im[i]; im[i] = im[j]; im[j] = ti;
            }
        }
        // Cooley–Tukey
        for (int len = 2; len <= n; len <<= 1) {
            double ang = -2.0 * Math.PI / len;
            double wlenCos = Math.cos(ang);
            double wlenSin = Math.sin(ang);
            for (int i = 0; i < n; i += len) {
                double wCos = 1.0, wSin = 0.0;
                int half = len >>> 1;
                for (int k = 0; k < half; k++) {
                    int u = i + k;
                    int v = u + half;
                    double r2 = re[v] * wCos - im[v] * wSin;
                    double i2 = re[v] * wSin + im[v] * wCos;
                    re[v] = (float) (re[u] - r2);
                    im[v] = (float) (im[u] - i2);
                    re[u] += r2;
                    im[u] += i2;
                    double nwCos = wCos * wlenCos - wSin * wlenSin;
                    wSin = wCos * wlenSin + wSin * wlenCos;
                    wCos = nwCos;
                }
            }
        }
    }

    // Градиент цвета от «тёплого» к «холодному»
    private static int gradientColor(int idx) {
        float t = (SPEC_BANDS <= 1) ? 0f : (idx / (SPEC_BANDS - 1f));
        int r = lerpI(0xE8, 0x5C, t); // от красного к синему
        int g = lerpI(0x4A, 0x6B, t);
        int b = lerpI(0x5F, 0xF1, t);
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }
    private static int lerpI(int a, int b, float t) {
        return a + (int) Math.round((b - a) * Math.max(0f, Math.min(1f, t)));
    }

    // Умножение цвета на яркость (0..1)
    private static int scaleColor(int rgb, float v) {
        v = Math.max(0f, Math.min(1f, v));
        int r = (int)(((rgb >> 16) & 0xFF) * v);
        int g = (int)(((rgb >> 8)  & 0xFF) * v);
        int b = (int)(( rgb        & 0xFF) * v);
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }



// ----------------- Кастомный звук с динамической громкостью -----------------
    private static class PlaybackSound extends AbstractTickableSoundInstance {
        private final java.util.function.Supplier<Float> volumeSupplier;
        private boolean requestedStop = false;

        PlaybackSound(SoundEvent event, java.util.function.Supplier<Float> vol) {
            super(event, SoundSource.RECORDS, SoundInstance.createUnseededRandom());
            this.volumeSupplier = vol != null ? vol : () -> 1.0f;
            this.looping = false;
            this.delay = 0;
            this.relative = true;
            this.x = 0.0;
            this.y = 0.0;
            this.z = 0.0;
            this.volume = this.volumeSupplier.get();
            this.pitch = 1.0f;
            // Позволяет мгновенно обновить громкость извне
        }

        // Позволяет мгновенно обновить громкость извне (например, при прокрутке крутилки)
        void setVolumeDynamic(float v) {
            this.volume = clamp01f(v);
        }

        @Override
        public void tick() {
            if (requestedStop) {
                this.stop(); // protected, но мы внутри класса
                return;
            }
            // динамически подтягиваем громкость
            this.volume = clamp01f(this.volumeSupplier.get());
        }

        void requestStop() { this.requestedStop = true; }

        boolean isActuallyStopped() {
            // когда stop() сработал — движок перестаёт тикать инстанс и он пропадает из менеджера.
            // У нас прямого флага нет; снаружи будем считать «остановлен», когда SoundManager его уже не знает.
            // Это проверим косвенно в Screen через null/замену ссылки.
            return this.requestedStop;
        }
    }
}
