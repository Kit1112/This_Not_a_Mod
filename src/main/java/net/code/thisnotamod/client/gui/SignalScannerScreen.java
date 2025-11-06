package net.code.thisnotamod.client.gui;

import com.mojang.blaze3d.systems.RenderSystem;
import com.mojang.blaze3d.vertex.*;
import net.code.thisnotamod.world.inventory.SignalScannerMenu;
import net.minecraft.Util;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.resources.language.I18n;
import net.minecraft.network.chat.Component;
import net.minecraft.world.entity.player.Inventory;
import org.joml.Matrix4f;
import org.lwjgl.glfw.GLFW;
import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundSource;
import net.minecraft.client.resources.sounds.SimpleSoundInstance;
import net.minecraft.client.resources.sounds.AbstractTickableSoundInstance;
import net.minecraft.client.resources.sounds.SoundInstance;
import net.code.thisnotamod.client.SignalPicker; 
import net.code.thisnotamod.ThisnotamodMod;
import net.code.thisnotamod.network.RequestNextSignalC2S;

import java.util.*;

public class SignalScannerScreen extends AbstractContainerScreen<SignalScannerMenu> {

    // --- UI локализация: ключи ---
    private static final String K_BANNER              = "signalmanager.ui.scanner.banner";
    private static final String K_SCANNER_SPEED       = "signalmanager.ui.scanner.label.scanner_speed";       // scanner speed: %s px/s
    private static final String K_PINGER_SPEED        = "signalmanager.ui.scanner.label.pinger_speed";        // pinger speed: x%s
    private static final String K_PINGER_COOLDOWN     = "signalmanager.ui.scanner.label.pinger_cooldown";     // pinger cooldown: %ss
    private static final String K_COOLDOWN_HINT       = "signalmanager.ui.scanner.log.cooldown";              // Quick scan is on cooldown
    private static final String K_INIT_QUICK_SCAN     = "signalmanager.ui.scanner.log.init_quick_scan";       // Initializing quick scan...
    private static final String K_PINGING             = "signalmanager.ui.scanner.log.pinging";               // pinging…
    private static final String K_ERR_PING_FAILED     = "signalmanager.ui.scanner.log.error_ping_failed";     // Error [2] Ping failed, weak or no signal
    private static final String K_ERR_SENSOR          = "signalmanager.ui.scanner.log.sensor_error";          // sensor error
    private static final String K_SUCCESS_PING        = "signalmanager.ui.scanner.log.success_ping";          // Successful ping. Initializing satellite rotation...
    private static final String K_PINGER_READY        = "signalmanager.ui.scanner.label.pinger_ready";        // pinger: READY
    private static final String K_PINGER_SECONDS      = "signalmanager.ui.scanner.label.pinger_seconds";      // pinger: %ss
    private static final String K_AZIMUTH             = "signalmanager.ui.scanner.label.azimuth";             // Azimuth: %s
    private static final String K_ALTITUDE            = "signalmanager.ui.scanner.label.altitude";            // Altitude: %s

    private static final String MODID = "thisnotamod";
    private boolean wasMoving = false;
    private MoveLoopSound moveLoop = null;

    private static final int   MOVE_EASE_TICKS  = 15;
    private static final float MOVE_EASE_START  = 0.25f;
    private int moveEaseCounter = 0;

    private float bigW, bigH;
    private float camX, camY;

    private static final int MARGIN = 12;
    private static final int FRAME_THICK = 2;
    private static final int LINE_THIN   = 1;
    private static final int PAD = 6;
    private static final int CONSOLE_MIN_H = 92;
    private static final int LEFT_PANE_MIN_W = 160;

    private float viewX, viewY, viewW, viewH;
    private float consoleX, consoleY, consoleW, consoleH;
    private float leftPaneW, logPaneX, logPaneW;

    /** Пересчёт геометрии экрана под любое окно/скейл. */
    private void computeLayout() {
        final int w = this.width;
        final int h = this.height;

        final int innerX = MARGIN;
        final int innerY = MARGIN;
        final int innerW = Math.max(1, w - MARGIN * 2);
        final int innerH = Math.max(1, h - MARGIN * 2);

        int cH = Math.max(CONSOLE_MIN_H, Math.round(innerH * 0.26f));
        if (cH > innerH - 80) {
            cH = Math.max(CONSOLE_MIN_H, innerH - 80);
        }

        this.viewX = innerX;
        this.viewY = innerY;
        this.viewW = innerW;
        this.viewH = Math.max(1, innerH - cH);

        this.consoleX = innerX;
        this.consoleY = innerY + this.viewH;
        this.consoleW = innerW;
        this.consoleH = cH;

        float lp = Math.max(LEFT_PANE_MIN_W, Math.round(this.consoleW * 0.38f));
        if (lp > this.consoleW - 100) {
            lp = Math.max(LEFT_PANE_MIN_W, this.consoleW - 100);
        }
        this.leftPaneW = lp;

        this.logPaneX = this.consoleX + this.leftPaneW;
        this.logPaneW = Math.max(1f, this.consoleW - this.leftPaneW);
    }


    private static class Star { float x,y,a; }
    private final List<Star> stars = new ArrayList<>();

    private static class MoveLoopSound extends AbstractTickableSoundInstance {
        protected MoveLoopSound(SoundEvent e) {
            super(e, SoundSource.PLAYERS, SoundInstance.createUnseededRandom());
            this.looping = true;
            this.relative = true;
            this.attenuation = SoundInstance.Attenuation.NONE;
            this.volume = 0.1f;
            this.pitch = 1.0f;
        }
        @Override public void tick() { }
    }

    private void startMoveLoop() {
        if (moveLoop != null) return;
        SoundEvent e = evt("scanner_move");
        if (e == null) return;
        moveLoop = new MoveLoopSound(e);
        Minecraft.getInstance().getSoundManager().play(moveLoop);
    }

    private void stopMoveLoop() {
        if (moveLoop != null) {
            Minecraft.getInstance().getSoundManager().stop(moveLoop);
            moveLoop = null;
        }
    }

    private static class Signal {
        float x,y,radius;
        long spawnMs, ttlMs;
        float pulseAge;
        boolean caught;
    }
    private final List<Signal> signals = new ArrayList<>();
    private static final int MAX_SIGNALS = 5;

    private static class Ping { float cx,cy,targetR,age,duration; }
    private final List<Ping> pings = new ArrayList<>();

    private static class ScanArrow {
        float angleRad;
        float length;
        float baseWidth;
        long startMs;
        float duration;
    }
    private final List<ScanArrow> scanArrows = new ArrayList<>();

    private static class UiLog {
        String text; int color; long ts;
        UiLog(String t, int c){ text=t; color=c; ts=Util.getMillis(); }
    }
    private final Deque<UiLog> uiLog = new ArrayDeque<>();
    private static final int LOG_COLOR_NORMAL = 0xFFFFFFFF;
    private static final int LOG_COLOR_HINT   = 0xFFB0B0B0;
    private static final int LOG_COLOR_OK     = 0xFF00FF00;
    private static final int LOG_COLOR_WARN   = 0xFFFFC000;
    private static final int LOG_COLOR_ERR    = 0xFFFF4040;

    private final Random rng = new Random();
    private long lastFrameMs;

    private static final float BASE_MOVE_SPEED_PX_PER_SEC = 240f;
    private float speedMod = 1f;
    private float pxPerSec = BASE_MOVE_SPEED_PX_PER_SEC;

    private float pingerCooldownSec = 1f;
    private long  nextPingAllowedMs  = 0L;

    private float pingerSpeedMod = 1f;
    private float pingerSuccessChance = 1f;

    private static final int   CAPTURE_PULSE_COUNT        = 2;
    private static final float BASE_CAPTURE_PULSE_DUR_SEC = 0.25f;

    private boolean captureInProgress = false;
    private Signal  captureTarget = null;
    private int     capturePulsesLeft = 0;
    private long    captureNextPulseAtMs = 0L;

    private static final int STAR_DENSITY_BASE = 1400;
    private static final int STAR_DENSITY_CAP  = 4200;
    private static final float STAR_MIN_ALPHA = 0.35f;
    private static final float STAR_MAX_ALPHA = 1.0f;

    private static final float SIGNAL_MIN_RADIUS = 0.75f;
    private static final float SIGNAL_MAX_RADIUS = 5f;
    private static final float RING_THICKNESS = 1.0f;

    private static final float RETICLE_OFFSET_X = 0.2f;
    private static final float RETICLE_OFFSET_Y = 0.0f;

    private static final float RETICLE_RADIUS = 10f;
    private static final int   RETICLE_STROKE = 1;

    private static final float ARROW_BASE_OFFSET = RETICLE_RADIUS + 4f;
    private static final float ARROW_BASE_LEN   = 35f;
    private static final float ARROW_BASE_WIDTH = 4f;
    private static final float ARROW_NEAR_LEN   = 10f;
    private static final float ARROW_NEAR_WIDTH = 4f;

    private static final long ARROW_RENDER_LOG_PERIOD_MS = 600L;
    private long lastArrowRenderLogMs = 0L;

    public SignalScannerScreen(SignalScannerMenu menu, Inventory inv, Component title) {
        super(menu, inv, title);
        this.imageWidth = 0;
        this.imageHeight = 0;
    }

    // ---------- Жизненный цикл ----------
    @Override
    protected void init() {
        super.init();

        computeLayout();

        bigW = this.viewW * 5f;
        bigH = this.viewH * 5f;
        camX = (bigW - this.viewW) * 0.5f;
        camY = (bigH - this.viewH) * 0.5f;

        stars.clear();
        int starCount = Math.max(STAR_DENSITY_BASE, (int)((bigW*bigH)/65000f));
        starCount = Math.min(starCount, STAR_DENSITY_CAP);
        Random starRng = new Random(Util.getMillis());
        for (int i=0;i<starCount;i++){
            Star s=new Star();
            s.x=starRng.nextFloat()*bigW;
            s.y=starRng.nextFloat()*bigH;
            s.a=STAR_MIN_ALPHA+starRng.nextFloat()*(STAR_MAX_ALPHA-STAR_MIN_ALPHA);
            stars.add(s);
        }

        signals.clear();
        pings.clear();
        scanArrows.clear();
        uiLog.clear();

        lastFrameMs=Util.getMillis();

        prepopulateSignals();
        uiLogAdd(I18n.get(K_BANNER), LOG_COLOR_WARN);
        uiLogAdd("", LOG_COLOR_HINT);

        this.speedMod = readSpeedModOnce();
        this.pxPerSec = BASE_MOVE_SPEED_PX_PER_SEC * this.speedMod;
        this.pingerCooldownSec = readPingerCooldownSecOnce();
        this.nextPingAllowedMs = readNextPingAllowedMs();
        this.pingerSpeedMod = readPingerSpeedOnce();
        this.pingerSuccessChance = readPingerSuccessChanceOnce();

        uiLogAdd(I18n.get(K_SCANNER_SPEED, String.format(java.util.Locale.ROOT, "%.0f", BASE_MOVE_SPEED_PX_PER_SEC)), LOG_COLOR_HINT);
        uiLogAdd(I18n.get(K_PINGER_SPEED,  String.format(java.util.Locale.ROOT, "x%.2f", pingerSpeedMod)).replace("x", ""), LOG_COLOR_HINT);
        uiLogAdd(I18n.get(K_PINGER_COOLDOWN, String.format(java.util.Locale.ROOT, "%.2f", pingerCooldownSec)), LOG_COLOR_HINT);
    }

    @Override public boolean isPauseScreen(){return false;}
    @Override public boolean shouldCloseOnEsc(){return true;}

    @Override
    public void removed() {
        stopMoveLoop();
        super.removed();
    }

    @Override
    public void containerTick(){
        super.containerTick();

        computeLayout();

        long now=Util.getMillis();
        float dt=(now-lastFrameMs)/1000f;
        lastFrameMs=now;
        if(dt<=0)dt=0.001f;

        float vx = 0, vy = 0;
        if (!captureInProgress) {
            if (isKeyDown(GLFW.GLFW_KEY_A)) vx -= 1;
            if (isKeyDown(GLFW.GLFW_KEY_D)) vx += 1;
            if (isKeyDown(GLFW.GLFW_KEY_W)) vy -= 1;
            if (isKeyDown(GLFW.GLFW_KEY_S)) vy += 1;
        }

        float dirLen = (float)Math.sqrt(vx*vx + vy*vy);
        if (dirLen > 1f) { vx /= dirLen; vy /= dirLen; }

        boolean moving = (vx != 0f) || (vy != 0f);
        if (moving && !wasMoving) startMoveLoop();
        else if (!moving && wasMoving) stopMoveLoop();
        wasMoving = moving;

        if (moving) {
            if (moveEaseCounter < MOVE_EASE_TICKS) moveEaseCounter++;
        } else {
            moveEaseCounter = 0;
        }
        float t = Math.min(1f, moveEaseCounter / (float) MOVE_EASE_TICKS);
        t = t * t * (3f - 2f * t);
        float easeMul = MOVE_EASE_START + (1f - MOVE_EASE_START) * t;

        camX += vx * pxPerSec * easeMul * dt;
        camY += vy * pxPerSec * easeMul * dt;

        camX = Math.max(0, Math.min(camX, bigW - viewW));
        camY = Math.max(0, Math.min(camY, bigH - viewH));

        if (captureInProgress) {
            if (captureTarget != null && captureTarget.caught) {
                captureInProgress = false;
            } else if (now >= captureNextPulseAtMs) {
                capturePulsesLeft--;
                if (capturePulsesLeft > 0) {
                    float pulseDur = BASE_CAPTURE_PULSE_DUR_SEC / Math.max(0.001f, pingerSpeedMod);
                    spawnCapturePulse(pulseDur);
                    captureNextPulseAtMs = now + (long)(pulseDur * 1000f);
                } else {
                    if (captureTarget == null) {
                        uiLogAdd(I18n.get(K_ERR_PING_FAILED), LOG_COLOR_WARN);
                        playError();
                        captureInProgress = false;
                        return;
                    }

                    if (rng.nextFloat() > pingerSuccessChance) {
                        uiLogAdd(rng.nextBoolean() ? I18n.get(K_ERR_SENSOR) : I18n.get(K_ERR_PING_FAILED), LOG_COLOR_ERR);
                        playError();
                        signals.remove(captureTarget);
                        captureInProgress = false;
                        captureTarget = null;
                        return;
                    }

                    captureTarget.caught = true;
                    signals.remove(captureTarget);
                    uiLogAdd(I18n.get(K_SUCCESS_PING), LOG_COLOR_OK);
                    // пробуем оба варианта id на случай опечатки в sounds.json
SoundEvent ok = evt("succesful_ping");
if (ok == null) ok = evt("successful_ping");

// если нашли — играем погромче через PLAYERS; иначе подсветим в лог
if (ok != null) {
    playPlayers(ok, 1.2f);
} else {
    uiLogAdd("[missing sound: succesful_ping]", LOG_COLOR_WARN);
}


                    // просим сервер выбрать следующий сигнал и прислать нам результат
					net.code.thisnotamod.network.NetBootstrap.ensureRegistered();
						net.code.thisnotamod.ThisnotamodMod.PACKET_HANDLER
    						.sendToServer(new net.code.thisnotamod.network.RequestNextSignalC2S());

                }
            }
        }

        if (signals.size() < MAX_SIGNALS && rng.nextFloat() < 0.03f) {
            signals.add(makeRandomSignal(now));
        }

        signals.removeIf(s -> {
            if (s.caught) return true;
            if (captureInProgress && s == captureTarget) return false;
            return (now - s.spawnMs) > s.ttlMs;
        });

        for (Signal s : signals) {
            s.pulseAge += dt;
            if (s.pulseAge > 2f) s.pulseAge -= 2f;
        }

        Iterator<Ping> it = pings.iterator();
        while (it.hasNext()) {
            Ping p = it.next();
            p.age += dt;
            if (p.age > p.duration) it.remove();
        }

        scanArrows.removeIf(a -> (now - a.startMs) / 1000f > a.duration);
    }

    @Override
    public boolean keyPressed(int keyCode, int scanCode, int modifiers) {
        if (captureInProgress) return true;

        if (keyCode == GLFW.GLFW_KEY_LEFT_SHIFT || keyCode == GLFW.GLFW_KEY_RIGHT_SHIFT) {
            long now = Util.getMillis();
            if (now < nextPingAllowedMs) {
                uiLogAdd(I18n.get(K_COOLDOWN_HINT), LOG_COLOR_WARN);
                playError();
                return true;
            }
            uiLogAdd(I18n.get(K_INIT_QUICK_SCAN), LOG_COLOR_HINT);
            playTurn();
            triggerScan(now);
            if (pingerCooldownSec > 0f) nextPingAllowedMs = now + (long)(pingerCooldownSec * 1000f);
            else nextPingAllowedMs = now;
            writeNextPingAllowedMs(nextPingAllowedMs);
            return true;
        }
        if (keyCode == GLFW.GLFW_KEY_ENTER || keyCode == GLFW.GLFW_KEY_KP_ENTER) {
            catchSignalOnEnter();
            return true;
        }
        return super.keyPressed(keyCode, scanCode, modifiers);
    }

    private void catchSignalOnEnter() {
        long now = Util.getMillis();
        if (captureInProgress) return;

        float retWcx = camX + viewW/2f + RETICLE_OFFSET_X;
        float retWcy = camY + viewH/2f + RETICLE_OFFSET_Y;

        Signal found = null;
        for (Signal s : signals) {
            if (s.caught) continue;
            float dx = retWcx - s.x, dy = retWcy - s.y;
            if (dx*dx + dy*dy <= s.radius*s.radius) { found = s; break; }
        }

        captureInProgress = true;
        captureTarget = found; // может быть null
        capturePulsesLeft = CAPTURE_PULSE_COUNT;

        float pulseDur = BASE_CAPTURE_PULSE_DUR_SEC / Math.max(0.001f, pingerSpeedMod);
        spawnCapturePulse(pulseDur);
        captureNextPulseAtMs = now + (long)(pulseDur * 1000f);

        uiLogAdd(I18n.get(K_PINGING), LOG_COLOR_HINT);
    }

    private void triggerScan(long nowMs) {
        scanArrows.clear();

        float retWcx = camX + viewW/2f + RETICLE_OFFSET_X;
        float retWcy = camY + viewH/2f + RETICLE_OFFSET_Y;

        for (Signal s : signals) {
            float ang = (float)Math.atan2(s.y - retWcy, s.x - retWcx);

            boolean visible = s.x>=camX && s.x<=camX+viewW && s.y>=camY && s.y<=camY+viewH;
            float sx = (s.x - camX);
            float sy = (s.y - camY);
            float dx = sx - (viewW/2f  + RETICLE_OFFSET_X);
            float dy = sy - (viewH/2f + RETICLE_OFFSET_Y);
            float dist = (float)Math.sqrt(dx*dx + dy*dy);

            float baseLen = ARROW_BASE_LEN;
            float baseWidth = ARROW_BASE_WIDTH;
            float len = baseLen, bw = baseWidth;

            if (visible) {
                float dNorm = clamp(dist / (Math.min(viewW, viewH) * 0.6f), 0f, 1f);
                len = lerp(ARROW_NEAR_LEN,   baseLen,   dNorm);
                bw  = lerp(ARROW_NEAR_WIDTH, baseWidth, dNorm);
            }

            ScanArrow a = new ScanArrow();
            a.angleRad = ang;
            a.length = len;
            a.baseWidth = bw;
            a.startMs = nowMs;
            a.duration = 2.0f;
            scanArrows.add(a);
        }

        lastArrowRenderLogMs = 0L;
    }

    @Override
    protected void renderLabels(GuiGraphics gfx, int mouseX, int mouseY) { }

    @Override
    protected void renderBg(GuiGraphics gfx, float partial, int mx, int my) {
        computeLayout();

        gfx.fill(0, 0, this.width, this.height, 0xFF000000);

        int white = 0xFFFFFFFF;

        fillFrame(gfx, MARGIN, MARGIN, this.width - MARGIN, this.height - MARGIN, FRAME_THICK, white);

        fillFrame(gfx, (int)viewX, (int)viewY, (int)(viewX+viewW), (int)(viewY+viewH), LINE_THIN, white);
        gfx.hLine((int)viewX, (int)(viewX+viewW), (int)(viewY + viewH/2f), white);
        gfx.vLine((int)(viewX + viewW/2f), (int)viewY, (int)(viewY+viewH), white);

        for (Star s : stars) {
            float sx = viewX + (s.x - camX);
            float sy = viewY + (s.y - camY);
            if (sx < viewX || sx > viewX + viewW || sy < viewY || sy > viewY + viewH) continue;
            int a = (int) (s.a * 255) & 0xFF;
            int col = (a << 24) | 0xFFFFFF;
            gfx.fill((int)sx, (int)sy, (int)sx + 1, (int)sy + 1, col);
        }

        for (Signal s : signals) {
            float sx = viewX + (s.x - camX), sy = viewY + (s.y - camY);
            if (sx < viewX || sx > viewX + viewW || sy < viewY || sy > viewY + viewH) continue;

            drawCircle(gfx, sx, sy, s.radius, 0xFFFFFFFF);
            float t = s.pulseAge / 2f;
            float r = t * (s.radius * 7f);
            float alpha = r <= 5*s.radius ? 1f : Math.max(0, (7*s.radius - r) / (2*s.radius));
            int sigCol = ((int)(alpha*255) << 24) | 0xFFFFFF;
            if (r > 1) drawRing(gfx, sx, sy, r, RING_THICKNESS, sigCol);
        }

        for (Ping p : pings) {
            float k = p.age / p.duration;
            float r = p.targetR * k;
            int pingCol = ((int)((1-k)*255) << 24) | 0x00FF00;
            drawRing(gfx, p.cx, p.cy, r, 1.5f, pingCol);
        }

        float cx = viewX + viewW/2f + RETICLE_OFFSET_X;
        float cy = viewY + viewH/2f + RETICLE_OFFSET_Y;
        int crossCol = 0xCCFFFFFF;
        int arm = 8;

        int y0 = (int)cy - (RETICLE_STROKE / 2);
        gfx.fill((int)cx - arm, y0, (int)cx + arm + 1, y0 + RETICLE_STROKE, crossCol);

        int x0v = (int)cx - (RETICLE_STROKE / 2);
        gfx.fill(x0v, (int)cy - arm, x0v + RETICLE_STROKE, (int)cy + arm + 1, crossCol);

        drawRing(gfx, cx, cy, RETICLE_RADIUS, 1.5f, 0x66FFFFFF);

        if (!scanArrows.isEmpty()) {
            long now = Util.getMillis();
            if (lastArrowRenderLogMs == 0L || now - lastArrowRenderLogMs >= ARROW_RENDER_LOG_PERIOD_MS) {
                lastArrowRenderLogMs = now;
            }

            RenderSystem.disableCull();
            for (ScanArrow a : scanArrows) {
                float age = (now - a.startMs) / 1000f;
                float k = clamp(1f - age / a.duration, 0f, 1f);
                int alpha = (int)(k * 255) & 0xFF;
                int arrowColor = (alpha << 24) | 0xFF0000;
                drawArrowTriangle(gfx, cx, cy, a.angleRad, a.length, a.baseWidth, ARROW_BASE_OFFSET, arrowColor);
            }
            RenderSystem.enableCull();
        }

        gfx.fill(0, (int)consoleY, this.width, this.height, 0xFF000000);
        gfx.fill(0, 0, (int)viewX, this.height, 0xFF000000);
        gfx.fill((int)(viewX + viewW), 0, this.width, this.height, 0xFF000000);
        gfx.fill(0, 0, this.width, (int)viewY, 0xFF000000);
        gfx.fill(0, (int)(viewY + viewH), this.width, (int)consoleY, 0xFF000000);

        int cx1 = (int)consoleX, cy1 = (int)consoleY;
        int cx2 = (int)(consoleX+consoleW), cy2 = (int)(consoleY+consoleH);
        gfx.fill(cx1, cy2 - LINE_THIN, cx2, cy2, white);
        gfx.fill(cx1, cy1, cx1 + LINE_THIN, cy2, white);
        gfx.fill(cx2 - LINE_THIN, cy1, cx2, cy2, white);
        int splitX = (int)(consoleX + leftPaneW);
        gfx.vLine(splitX, cy1, cy2, white);

        renderLeftPaneStatus(gfx);
        renderConsole(gfx);
    }

    @Override
    public void render(GuiGraphics gfx, int mx, int my, float partial){
        renderBackground(gfx);
        super.render(gfx,mx,my,partial);
        renderTooltip(gfx,mx,my);
    }

    private void renderConsole(GuiGraphics gfx){
        int lh = this.font.lineHeight;
        int maxLines = Math.max(1, (int)(consoleH - 2*PAD) / lh) - 1;
        trimUiLog(maxLines + 20);

        int baseY = (int)(consoleY + consoleH - PAD - lh);
        int x = (int)(logPaneX + PAD);

        int drawn = 0;
        Iterator<UiLog> it = uiLog.descendingIterator();
        while (it.hasNext() && drawn < maxLines) {
            UiLog line = it.next();
            int y = baseY - drawn * lh;
            gfx.drawString(this.font, line.text, x, y, line.color, false);
            drawn++;
        }
    }

    private void renderLeftPaneStatus(GuiGraphics gfx) {
        int leftX1 = (int)consoleX + PAD;
        int leftX2 = (int)(consoleX + leftPaneW) - PAD;
        int lh     = this.font.lineHeight;

        int textY  = (int)(consoleY + consoleH - PAD - lh);

        int cooldownY = textY;
        int altitudeY = textY - lh*2;
        int azimuthY  = textY - lh*4;

        long now = Util.getMillis();
        float remain = Math.max(0f, (nextPingAllowedMs - now) / 1000f);

        float denX = Math.max(1e-6f, bigW - viewW);
        float denY = Math.max(1e-6f, bigH - viewH);

        float nx = clamp(camX / denX, 0f, 1f);
        float ny = clamp(1f - (camY / denY), 0f, 1f);

        float az  = 360f * (1f - nx);
        float alt = 25f + 65f * ny;

        String azStr  = I18n.get(K_AZIMUTH,  String.format(java.util.Locale.ROOT, "%.1f", az));
        String altStr = I18n.get(K_ALTITUDE, String.format(java.util.Locale.ROOT, "%.1f", alt));

        int tx = leftX1;
        if (leftX2 > leftX1) {
            gfx.drawString(this.font, azStr,  tx, azimuthY,  LOG_COLOR_HINT, false);
            gfx.drawString(this.font, altStr, tx, altitudeY, LOG_COLOR_HINT, false);
        }

        String cdText;
        int    cdColor;
        if (remain <= 0.0001f) { cdText = I18n.get(K_PINGER_READY); cdColor = LOG_COLOR_OK; }
        else { cdText = I18n.get(K_PINGER_SECONDS, String.format(java.util.Locale.ROOT, "%.2f", remain)); cdColor = LOG_COLOR_WARN; }

        if (leftX2 > leftX1) {
            gfx.drawString(this.font, cdText, tx, cooldownY, cdColor, false);
        }
    }

    private void uiLogAdd(String msg){ uiLogAdd(msg, LOG_COLOR_NORMAL); }
    private void uiLogAdd(String msg, int color){ uiLog.addLast(new UiLog(msg, color)); }
    private void trimUiLog(int cap){ while (uiLog.size() > cap) uiLog.removeFirst(); }

    private float readSpeedModOnce() {
        var pl = Minecraft.getInstance().player;
        if (pl == null) return 1f;
        final float[] out = {1f};
        pl.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(cap -> {
            double v = cap.SignalScanerSpeedMod;
            if (v <= 0) v = 1.0;
            out[0] = (float) v;
        });
        return out[0];
    }

    private float readPingerSpeedOnce() {
        var pl = Minecraft.getInstance().player;
        if (pl == null) return 1f;
        final float[] out = {1f};
        pl.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(cap -> {
            double v = 1.0;
            try { v = cap.getClass().getField("PingerSpeed").getDouble(cap); }
            catch (Throwable ignore) {
                try { v = cap.PingerSpeed; } catch (Throwable ignored2) {}
            }
            if (v <= 0) v = 1.0;
            out[0] = (float)v;
        });
        return out[0];
    }

    private float readPingerCooldownSecOnce() {
        var pl = Minecraft.getInstance().player;
        if (pl == null) return 0f;
        final float[] out = {0f};
        pl.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(cap -> {
            double v = 0.0;
            try { v = cap.getClass().getField("PingerCooldown").getDouble(cap); }
            catch (Throwable ignore) {
                try { v = cap.PingerCooldown; } catch (Throwable ignored2) {}
            }
            if (v < 0) v = 0;
            out[0] = (float)v;
        });
        return out[0];
    }

    private float readPingerSuccessChanceOnce() {
        var pl = Minecraft.getInstance().player;
        if (pl == null) return 1f;
        final float[] out = {1f};
        pl.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(cap -> {
            double v = 1.0;
            try { v = cap.getClass().getField("pingerSuccesChance").getDouble(cap); }
            catch (Throwable ignore) {
                try { v = cap.pingerSuccesChance; } catch (Throwable ignored2) {}
            }
            if (v < 0.01) v = 0.01;
            if (v > 1.0) v = 1.0;
            out[0] = (float)v;
        });
        return out[0];
    }

    private long readNextPingAllowedMs() {
        var pl = Minecraft.getInstance().player;
        if (pl == null) return 0L;
        if (pl.getPersistentData().contains("ScannerNextPingAtMs"))
            return pl.getPersistentData().getLong("ScannerNextPingAtMs");
        return 0L;
    }

    private void writeNextPingAllowedMs(long t) {
        var pl = Minecraft.getInstance().player;
        if (pl != null) pl.getPersistentData().putLong("ScannerNextPingAtMs", t);
    }

    private void fillFrame(GuiGraphics gfx, int x1, int y1, int x2, int y2, int th, int color){
        gfx.fill(x1, y1, x2, y1+th, color);
        gfx.fill(x1, y2-th, x2, y2, color);
        gfx.fill(x1, y1, x1+th, y2, color);
        gfx.fill(x2-th, y1, x2, y2, color);
    }

    private boolean isKeyDown(int key) {
        return GLFW.glfwGetKey(Minecraft.getInstance().getWindow().getWindow(), key) == GLFW.GLFW_PRESS;
    }

    private static float clamp(float v, float a, float b) { return Math.max(a, Math.min(b, v)); }
    private static float lerp(float a, float b, float t) { return a + (b - a) * t; }

    private static SoundEvent evt(String path) {
        return BuiltInRegistries.SOUND_EVENT.get(new ResourceLocation(MODID, path));
    }

    private static void playUi(SoundEvent e, float vol) {
        if (e != null) {
            Minecraft.getInstance().getSoundManager().play(SimpleSoundInstance.forUI(e, vol));
        }
    }

    // проигрываем звук в категории PLAYERS, позиционно на игроке (громче, чем UI)
private static void playPlayers(SoundEvent e, float vol) {
    if (e == null) return;
    var mc = Minecraft.getInstance();
    var p = mc.player;
    if (p == null) return;
    mc.getSoundManager().play(new SimpleSoundInstance(
        e, // <-- передаём сам SoundEvent
        SoundSource.PLAYERS,
        Math.min(vol, 1.5f),
        1.0f,
        (mc.level != null ? mc.level.random : net.minecraft.util.RandomSource.create()), // <-- RandomSource
        p.getX(), p.getY(), p.getZ()
));

}


    private static void playError() { playUi(evt("signal_error"), 1.0f); }
    private static void playTurn()  { playUi(evt("scan_started"), 1.0f); }

    private Signal makeRandomSignal(long now) {
        Signal s = new Signal();

        s.radius = SIGNAL_MIN_RADIUS + rng.nextFloat() * (SIGNAL_MAX_RADIUS - SIGNAL_MIN_RADIUS);

        float minX = (viewW / 2f) + s.radius;
        float maxX =  bigW - (viewW / 2f) - s.radius;
        float minY = (viewH / 2f) + s.radius;
        float maxY =  bigH - (viewH / 2f) - s.radius;

        if (minX >= maxX) { minX = s.radius; maxX = bigW - s.radius; }
        if (minY >= maxY) { minY = s.radius; maxY = bigH - s.radius; }

        s.x = minX + rng.nextFloat() * (maxX - minX);
        s.y = minY + rng.nextFloat() * (maxY - minY);

        s.spawnMs = now;
        s.ttlMs   = 20_000L + rng.nextInt(50_000);
        s.pulseAge = rng.nextFloat() * 2f;
        s.caught = false;
        return s;
    }

    private void prepopulateSignals() {
        long now = Util.getMillis();
        int toAdd = 1 + rng.nextInt(5);
        for (int i = 0; i < toAdd && signals.size() < MAX_SIGNALS; i++) {
            signals.add(makeRandomSignal(now));
        }
    }

    private void drawCircle(GuiGraphics gfx, float cx, float cy, float r, int argb) {
        RenderSystem.enableBlend();
        RenderSystem.setShader(net.minecraft.client.renderer.GameRenderer::getPositionColorShader);
        Matrix4f m = gfx.pose().last().pose();
        BufferBuilder buf = Tesselator.getInstance().getBuilder();
        int a=(argb>>24)&0xFF, rr=(argb>>16)&0xFF, gg=(argb>>8)&0xFF, bb=argb&0xFF;
        buf.begin(VertexFormat.Mode.TRIANGLE_FAN, DefaultVertexFormat.POSITION_COLOR);
        buf.vertex(m, cx, cy, 0).color(rr, gg, bb, a).endVertex();
        for (int i=0;i<=40;i++) {
            double ang = 2*Math.PI*i/40;
            buf.vertex(m, cx+(float)Math.cos(ang)*r, cy+(float)Math.sin(ang)*r, 0).color(rr, gg, bb, a).endVertex();
        }
        BufferUploader.drawWithShader(buf.end());
    }

    private void drawRing(GuiGraphics gfx, float cx, float cy, float r, float t, int argb) {
        if (r<=0||t<=0) return;
        RenderSystem.enableBlend();
        RenderSystem.setShader(net.minecraft.client.renderer.GameRenderer::getPositionColorShader);
        Matrix4f m = gfx.pose().last().pose();
        BufferBuilder buf = Tesselator.getInstance().getBuilder();
        int a=(argb>>24)&0xFF, rr=(argb>>16)&0xFF, gg=(argb>>8)&0xFF, bb=argb&0xFF;
        float inner = Math.max(0.5f, r - t/2), outer = r + t/2;
        buf.begin(VertexFormat.Mode.TRIANGLE_STRIP, DefaultVertexFormat.POSITION_COLOR);
        for (int i=0;i<=60;i++) {
            double ang = 2*Math.PI*i/60;
            float c=(float)Math.cos(ang), s=(float)Math.sin(ang);
            buf.vertex(m, cx+c*outer, cy+s*outer, 0).color(rr,gg,bb,a).endVertex();
            buf.vertex(m, cx+c*inner, cy+s*inner, 0).color(rr,gg,bb,a).endVertex();
        }
        BufferUploader.drawWithShader(buf.end());
    }

    private void spawnCapturePulse(float pulseDurationSec) {
        Ping p = new Ping();
        p.cx = viewX + viewW/2f + RETICLE_OFFSET_X;
        p.cy = viewY + viewH/2f + RETICLE_OFFSET_Y;
        float baseR = (captureTarget != null ? captureTarget.radius : RETICLE_RADIUS);
        p.targetR = baseR * 7f;
        p.duration = pulseDurationSec;
        p.age = 0f;
        pings.add(p);
        playUi(evt("pinger"), 1.0f);
    }

    private void drawArrowTriangle(GuiGraphics gfx, float cx, float cy, float angle, float len, float baseWidth, float baseOffset, int argb) {
        RenderSystem.enableBlend();
        RenderSystem.setShader(net.minecraft.client.renderer.GameRenderer::getPositionColorShader);
        RenderSystem.disableCull();
        Matrix4f m = gfx.pose().last().pose();
        BufferBuilder buf = Tesselator.getInstance().getBuilder();
        int a=(argb>>24)&0xFF, rr=(argb>>16)&0xFF, gg=(argb>>8)&0xFF, bb=argb&0xFF;

        float dx=(float)Math.cos(angle), dy=(float)Math.sin(angle);

        float bx = cx + dx * baseOffset;
        float by = cy + dy * baseOffset;
        float tipX = bx + dx * len;
        float tipY = by + dy * len;

        float nx = -dy, ny = dx;
        float half = baseWidth/2f;
        float b1x = bx + nx * half, b1y = by + ny * half;
        float b2x = bx - nx * half, b2y = by - ny * half;

        buf.begin(VertexFormat.Mode.TRIANGLES, DefaultVertexFormat.POSITION_COLOR);
        buf.vertex(m, tipX, tipY, 0).color(rr,gg,bb,a).endVertex();
        buf.vertex(m, b1x, b1y, 0).color(rr,gg,bb,a).endVertex();
        buf.vertex(m, b2x, b2y, 0).color(rr,gg,bb,a).endVertex();
        BufferUploader.drawWithShader(buf.end());

        RenderSystem.enableCull();
    }
}
