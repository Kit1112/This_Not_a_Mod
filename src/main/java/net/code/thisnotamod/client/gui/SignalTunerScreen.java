package net.code.thisnotamod.client.gui;

import net.code.thisnotamod.network.ThisnotamodModVariables; // подставь своё имя пакета, если отличается
import com.mojang.blaze3d.pipeline.RenderTarget;
import com.mojang.blaze3d.pipeline.TextureTarget;
import com.mojang.blaze3d.systems.RenderSystem;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.renderer.GameRenderer;
import net.minecraft.client.resources.model.BakedModel; // 1.20.1
import net.minecraft.client.renderer.texture.TextureAtlasSprite;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.player.Inventory;
import com.mojang.blaze3d.vertex.Tesselator;
import com.mojang.blaze3d.vertex.BufferBuilder;
import com.mojang.blaze3d.vertex.DefaultVertexFormat;
import com.mojang.blaze3d.vertex.VertexFormat;
import org.joml.Matrix4f;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL30;

import net.code.thisnotamod.world.inventory.SignalTunerMenu;

import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.TickEvent;

import java.util.Locale;

/**
 * Экран тюнера сигнала.
 * Игровая логика вынесена в статический Background и тикает даже при закрытом GUI.
 */
public class SignalTunerScreen extends AbstractContainerScreen<SignalTunerMenu> {

    // ========= Фоновая модель — работает всегда (даже когда GUI закрыт) =========
    private static final class Background {

        // целевые параметры
        static int    targetPolarityDir  = clamp(1, 0, 2);
        static double targetPolarityDeg  = wrapAngle(25.0);
        static double targetFrequency    = clampDouble(75.0, 0, 999);

        // текущее состояние (то, что «крутится»)
        static int    currentPolarityDir = 0;
        static double currentPolarityDeg = 0.0;
        static double currentFrequency   = 0.0;

        // скорости от крутилок
        static int polaritySpeedPerSec   = 0; // deg/s
        static int frequencySpeedPerSec  = 0; // Hz/s

        // детектор и загрузка
        static double detectorPercent     = 0.0;  // 0..100
        static double downloadedPercent   = 0.0;  // 0..100

        // выходы фильтров
        static double polarityOutputPercent              = 0.0;
        static double frequencyOutputPercent             = 0.0;
        static double polarityOutputPercentSmoothed      = 0.0;
        static double frequencyOutputPercentSmoothed     = 0.0;

        // время
        static long   lastNano = -1L;
        static double timeSeconds = 0.0;

        // RNG
        static final java.util.Random noiseRnd = new java.util.Random(0x612D_BEEF);

        // Бюджеты дискретного дрейфа от погоды для каждого параметра (накапливаем и тратим по 0.1/0.2)
        static double driftBudgetPol = 0.0;
        static double driftBudgetFreq = 0.0;

        static void initOnce() {
            if (!registered) {
                registered = true;
                MinecraftForge.EVENT_BUS.addListener(SignalTunerScreen::onClientTick);
            }
        }
        private static boolean registered = false;
    }

    // ======================= ПАРАМЕТРЫ ОТРИСОВКИ/GUI =======================
    @Override
    protected void renderLabels(GuiGraphics gg, int mouseX, int mouseY) {
        // Не рисуем ни заголовок, ни "Инвентарь"
    }

    public static final int VIRTUAL_W = 640;
    public static final int VIRTUAL_H = 360;

    private int guiX, guiY;       // левый верх рендера в пикселях экрана
    private float guiScale;       // масштаб к VIRTUAL_W×VIRTUAL_H

    public static final int INSET_LEFT = 13;
    public static final int INSET_RIGHT = 13;
    public static final int INSET_TOP = 13;
    public static final int INSET_BOTTOM = 96;

    public static final int SCREEN_X = INSET_LEFT + 1;
    public static final int SCREEN_Y = INSET_TOP;
    public static final int SCREEN_W = VIRTUAL_W - INSET_LEFT - INSET_RIGHT - 1;
    public static final int SCREEN_H = VIRTUAL_H - INSET_TOP - INSET_BOTTOM;

    public static final int GRID_COLS = 3;
    public static final int GRID_ROWS = 2;
    private static final int BTN_ROW1_Y = SCREEN_Y + SCREEN_H + 27;
    private static final int BTN_ROW2_Y = SCREEN_Y + SCREEN_H + 49;
    private static final float ITEM_SCALE = 1.35f;

    private static final ResourceLocation BACKGROUND =
            new ResourceLocation("thisnotamod", "textures/screens/downloadpanelscreen.png");

    private static final boolean DEBUG_BUTTONS = true;
    private static final int CIRCLE_OUTLINE_THICKNESS = 1;
    private static final int  POLARITY_LINE_THICKNESS = 1;
    private static final int  POLARITY_LINE_COLOR     = 0xFFFFFFFF;

    private static final double DETECTOR_RATE_DEFAULT = 1.0;   // %/с по умолчанию
    private static final double DOWNLOAD_SPEED_DEFAULT = 1.0;  // 1 => 1% за 10 сек
    private static final double POLARITY_WIDTH_DEFAULT  = 18.0; // градусы
    private static final double FREQUENCY_WIDTH_DEFAULT = 60.0; // Гц

    //ограничения скоростей смещения фильтров
    private static final int POLARITY_SPEED_MIN  = -360;
    private static final int POLARITY_SPEED_MAX  =  360;
    private static final int FREQUENCY_SPEED_MIN = -1000;
    private static final int FREQUENCY_SPEED_MAX =  1000;

    // «нелинейность» выхода (острый пик к 100%):
    private static final double EASE_MIN = 0.5;
    private static final double EASE_MAX = 100.0;
    private static final double SHARP_P_MIN = 0.60;  // при низком значении переменной
    private static final double SHARP_P_MAX = 0.95;  // при высоком
    private static final double TOP_SNAP_EPS_MIN = 0.00; // прилипание к 100%
    private static final double TOP_SNAP_EPS_MAX = 0.35;

    // «звёзды» — чисто визуал
    private static final int STAR_COUNT = 80;
    private int[] starXs = null, starYs = null;
    private long starSeed = 12345L;
    private final net.minecraft.world.item.ItemStack demoStack =
            new net.minecraft.world.item.ItemStack(net.minecraft.world.item.Items.DIAMOND);

    private static final double STAR_SPEED_X = -18.0;
    private static final double STAR_SPEED_Y = -6.0;
    private double starOffsetX = 0.0;
    private double starOffsetY = 0.0;

    private TextureTarget pixelRT = null;
    private static final int PIXEL_MIN_RES = 2;
    private String detectedObject = "Test Probe";

    private final IntRect btn0      = new IntRect(SCREEN_X + 12,  BTN_ROW1_Y, 20, 20);
    private final IntRect btn1      = new IntRect(SCREEN_X + 52,  BTN_ROW1_Y, 17, 20);
    private final IntRect btn2      = new IntRect(SCREEN_X + 71,  BTN_ROW1_Y, 17, 20);
    private final IntRect btn3      = new IntRect(SCREEN_X + 90,  BTN_ROW1_Y, 17, 20);
    private final IntRect btn4      = new IntRect(SCREEN_X + 52,  BTN_ROW2_Y, 17, 20);
    private final IntRect btn5      = new IntRect(SCREEN_X + 71,  BTN_ROW2_Y, 17, 20);
    private final IntRect btn6      = new IntRect(SCREEN_X + 90,  BTN_ROW2_Y, 17, 20);

    public SignalTunerScreen(SignalTunerMenu menu, Inventory inv, Component title) {
        super(menu, inv, title);
        this.imageWidth = VIRTUAL_W;
        this.imageHeight = VIRTUAL_H;

        // Включаем фоновый тикер (регистрируется один раз за игру)
        Background.initOnce();
    }

    @Override
    public boolean isPauseScreen() { return false; }

    // =============================== РЕНДЕР ===============================
    @Override
    protected void renderBg(GuiGraphics gg, float partialTick, int mouseX, int mouseY) {
        // Локальное dt только для визуала (звёзды, спин предмета)
        long now = System.nanoTime();
        if (Background.lastNano < 0) Background.lastNano = now;
        double dt = (now - Background.lastNano) / 1_000_000_000.0;
        if (dt < 0) dt = 0;
        Background.lastNano = now; // синхронизируем визуальное время с фоновой логикой
        Background.timeSeconds += dt;

        // визуальные смещения звёзд
        starOffsetX += STAR_SPEED_X * dt;
        starOffsetY += STAR_SPEED_Y * dt;

        // === расчёт вписанного прямоугольника 16:9 ===
        float screenW = this.width;
        float screenH = this.height;

        float targetW = screenW;
        float targetH = screenW * (9f / 16f);
        if (targetH > screenH) {
            targetH = screenH;
            targetW = screenH * (16f / 9f);
        }

        guiX = Math.round((screenW - targetW) / 2f);
        guiY = Math.round((screenH - targetH) / 2f);
        guiScale = targetW / (float) VIRTUAL_W;

        // затемнение гуттеров
        RenderSystem.enableBlend();
        final int shade = 0xA0000000;
        int uiW = Math.round(guiScale * VIRTUAL_W);
        int uiH = Math.round(guiScale * VIRTUAL_H);
        int left   = guiX;
        int top    = guiY;
        int right  = guiX + uiW;
        int bottom = guiY + uiH;
        gg.fill(0, 0, this.width, top, shade);
        gg.fill(0, top, left, bottom, shade);
        gg.fill(right, top, this.width, bottom, shade);
        gg.fill(0, bottom, this.width, this.height, shade);
        RenderSystem.disableBlend();

        gg.pose().pushPose();
        gg.pose().translate(guiX, guiY, 0);
        gg.pose().scale(guiScale, guiScale, 1f);

        if (BACKGROUND != null) {
            RenderSystem.setShaderTexture(0, BACKGROUND);
            gg.blit(BACKGROUND, 0, 0, 0, 0, VIRTUAL_W, VIRTUAL_H, VIRTUAL_W, VIRTUAL_H);
        }

        drawScreenFrameAndGrid(gg);

        IntRect r0 = cellRect(0);
        IntRect r1 = cellRect(1);
        IntRect r2 = cellRect(2);
        IntRect r3 = cellRect(3);
        IntRect r4 = cellRect(4);
        IntRect r5 = cellRect(5);

        // звёзды и item
        if (starXs == null || starYs == null) {
            java.util.Random rnd = new java.util.Random(starSeed);
            starXs = new int[STAR_COUNT];
            starYs = new int[STAR_COUNT];
            for (int i = 0; i < STAR_COUNT; i++) {
                starXs[i] = r2.x + 6 + rnd.nextInt(Math.max(1, r2.w - 12));
                starYs[i] = r2.y + 6 + rnd.nextInt(Math.max(1, r2.h - 12));
            }
        }
        renderArea2Content(gg, r2);

        // cбросим батчи перед пикселизацией
        gg.flush();

        // PIXELATE: копия r2 -> pixelRT и апскейл назад
        double tDet = clampDouble(Background.detectorPercent / 100.0, 0.0, 1.0);
        int lowW = Math.max(PIXEL_MIN_RES, (int)Math.round(PIXEL_MIN_RES + tDet * (r2.w - PIXEL_MIN_RES)));
        int lowH = Math.max(PIXEL_MIN_RES, (int)Math.round(PIXEL_MIN_RES + tDet * (r2.h - PIXEL_MIN_RES)));
        ensurePixelRT(lowW, lowH);
        copyScreenAreaToPixelRT(r2, lowW, lowH);
        blitPixelRTToArea(gg, r2);

        // Остальной UI поверх
        drawPolarityRadar(gg, r0);
        drawFrequencyOscilloscope(gg, r3);

        // Текстовые блоки (используем значения из Background)
        drawPolarityTextBlock(gg, r1);
        drawFrequencyTextBlock(gg, r4);

        int left5 = r5.x + 10;
        int top5  = r5.y + 8;
        int lh5   = 10 + 4;

        boolean ready = Background.detectorPercent >= 100.0 - 1e-6;

        String detLabel = "Detector status: ";
        String detValue = String.format(Locale.ROOT, "%.1f%%", Background.detectorPercent);

        String objText  = "Object: " + (ready ? detectedObject : "none");

        // плейсхолдеры только после готовности
        String qualText = "Signal quality: " + (ready ? "high"   : "none");
        String freqText = "Signal frequencity: " + (ready ? "middle" : "none");

        String dlText = String.format(Locale.ROOT, "Downloaded: %.1f%%", Background.downloadedPercent);

        // 1) Статус детектора
        gg.drawString(this.font, detLabel, left5, top5 + 0 * lh5, 0xFFFFFFFF, false);
        int detLabelW = this.font.width(detLabel);
        gg.drawString(this.font, detValue, left5 + detLabelW, top5 + 0 * lh5, 0xFF00FF00, false);

        // 2) Объект
        gg.drawString(this.font, objText,  left5, top5 + 1 * lh5, 0xFFBBBBBB, false);

        // 3) Качество
        gg.drawString(this.font, qualText, left5, top5 + 2 * lh5, 0xFFBBBBBB, false);

        // 4) Частота
        gg.drawString(this.font, freqText, left5, top5 + 3 * lh5, 0xFFBBBBBB, false);

        // 5) Загружено
        gg.drawString(this.font, dlText, left5, top5 + 4 * lh5, 0xFF00FF00, false);

        // Полоски для визуала
        int polarityBars = computePolarityBars(Background.currentPolarityDeg, Background.targetPolarityDeg);
        int frequencyBars = computeFrequencyBars(Background.currentFrequency, Background.targetFrequency);
        if (Background.currentPolarityDir != Background.targetPolarityDir) {
            polarityBars = 0;
        }
        drawBars(gg, r1, polarityBars, 10, 0xFFE0C040);
        drawBars(gg, r4, frequencyBars, 10, 0xFF40C0E0);

        if (DEBUG_BUTTONS) {
            debugRect(gg, btn0, 0x40FFFF00);
            debugRect(gg, btn1, 0x40FFFFFF);
            debugRect(gg, btn2, 0x40FFFFFF);
            debugRect(gg, btn3, 0x40FFFFFF);
            debugRect(gg, btn4, 0x4020FFFF);
            debugRect(gg, btn5, 0x4020FFFF);
            debugRect(gg, btn6, 0x4020FFFF);
        }

        gg.pose().popPose();
    }

    @Override
    public void render(GuiGraphics gg, int mouseX, int mouseY, float partialTick) {
        // НЕ вызываем renderBackground — мир остаётся видимым
        super.render(gg, mouseX, mouseY, partialTick);
        this.renderTooltip(gg, mouseX, mouseY);
    }

    // Кнопки и крутилки меняют состояние в Background (оно не сбрасывается)
    @Override
    public boolean mouseClicked(double mouseX, double mouseY, int button) {
        if (button == 0 && isHovering(btn0, mouseX, mouseY)) {
            Background.currentPolarityDir = (Background.currentPolarityDir + 1) % 3;
            return true;
        }
        return super.mouseClicked(mouseX, mouseY, button);
    }

    @Override
    public boolean mouseScrolled(double mouseX, double mouseY, double delta) {
        int sign = delta > 0 ? 1 : -1;

        if (isHovering(btn1, mouseX, mouseY)) {
            Background.polaritySpeedPerSec += sign * 1;
            Background.polaritySpeedPerSec = clamp(Background.polaritySpeedPerSec, POLARITY_SPEED_MIN, POLARITY_SPEED_MAX);
            return true;
        }
        if (isHovering(btn2, mouseX, mouseY)) {
            Background.polaritySpeedPerSec += sign * 5;
            Background.polaritySpeedPerSec = clamp(Background.polaritySpeedPerSec, POLARITY_SPEED_MIN, POLARITY_SPEED_MAX);
            return true;
        }
        if (isHovering(btn3, mouseX, mouseY)) {
            Background.polaritySpeedPerSec += sign * 15;
            Background.polaritySpeedPerSec = clamp(Background.polaritySpeedPerSec, POLARITY_SPEED_MIN, POLARITY_SPEED_MAX);
            return true;
        }

        if (isHovering(btn4, mouseX, mouseY)) {
            Background.frequencySpeedPerSec += sign * 1;
            Background.frequencySpeedPerSec = clamp(Background.frequencySpeedPerSec, FREQUENCY_SPEED_MIN, FREQUENCY_SPEED_MAX);
            return true;
        }
        if (isHovering(btn5, mouseX, mouseY)) {
            Background.frequencySpeedPerSec += sign * 10;
            Background.frequencySpeedPerSec = clamp(Background.frequencySpeedPerSec, FREQUENCY_SPEED_MIN, FREQUENCY_SPEED_MAX);
            return true;
        }
        if (isHovering(btn6, mouseX, mouseY)) {
            Background.frequencySpeedPerSec += sign * 100;
            Background.frequencySpeedPerSec = clamp(Background.frequencySpeedPerSec, FREQUENCY_SPEED_MIN, FREQUENCY_SPEED_MAX);
            return true;
        }

        return super.mouseScrolled(mouseX, mouseY, delta);
    }

    private void drawScreenFrameAndGrid(GuiGraphics gg) {
        int x = SCREEN_X, y = SCREEN_Y, w = SCREEN_W, h = SCREEN_H;
        RenderSystem.disableBlend();

        gg.fill(x, y, x + w, y + h, 0xFF000000);
        gg.renderOutline(x, y, w, h, 0xFF7F7F7F);

        double cw = w / (double) GRID_COLS;
        for (int c = 1; c < GRID_COLS; c++) {
            int gx = x + (int) Math.round(c * cw);
            gg.vLine(gx, y, y + h, 0xFF7F7F7F);
        }
        double rh = h / (double) GRID_ROWS;
        for (int r = 1; r < GRID_ROWS; r++) {
            int gy = y + (int) Math.round(r * rh);
            gg.hLine(x, x + w, gy, 0xFF7F7F7F);
        }
    }

    private void drawPolarityTextBlock(GuiGraphics gg, IntRect r) {
        int line = 0;
        int lh = 10 + 4;
        int cx = r.x + 10;
        gg.drawString(this.font, "Polarity filter:", cx, r.y + 8 + line * lh, 0xFFFFFFFF, false); line++;
        gg.drawString(this.font, String.format(Locale.ROOT, "Filter offset: %.1f", Background.currentPolarityDeg), cx, r.y + 8 + line * lh, 0xFFBBBBBB, false); line++;
        gg.drawString(this.font, "Offset speed: " + Background.polaritySpeedPerSec + " deg/s", cx, r.y + 8 + line * lh, 0xFFBBBBBB, false); line++;
        gg.drawString(this.font, String.format(Locale.ROOT, "Output data: %.1f%%", Background.polarityOutputPercent), cx, r.y + 8 + line * lh, 0xFFE0C040, false);
    }

    private void drawFrequencyTextBlock(GuiGraphics gg, IntRect r) {
        int line = 0;
        int lh = 10 + 4;
        int cx = r.x + 10;
        gg.drawString(this.font, "Frequency filter:", cx, r.y + 8 + line * lh, 0xFFFFFFFF, false); line++;
        gg.drawString(this.font, String.format(Locale.ROOT, "Filter offset: %.1f", Background.currentFrequency), cx, r.y + 8 + line * lh, 0xFFBBBBBB, false); line++;
        gg.drawString(this.font, "Offset speed: " + Background.frequencySpeedPerSec + " Hz/s", cx, r.y + 8 + line * lh, 0xFFBBBBBB, false); line++;
        gg.drawString(this.font, String.format(Locale.ROOT, "Output data: %.1f%%", Background.frequencyOutputPercent), cx, r.y + 8 + line * lh, 0xFFE0C040, false);
    }

    private void drawBars(GuiGraphics gg, IntRect underRect, int filled, int total, int color) {
        int margin = 8;
        int barW = (underRect.w - margin * 2 - (total - 1) * 3) / total;
        int barH = 6;
        int x = underRect.x + margin;
        int y = underRect.y + underRect.h - margin - barH;

        for (int i = 0; i < total; i++) {
            int c = (i < filled) ? color : 0xFF404040;
            gg.fill(x, y, x + barW, y + barH, c);
            x += barW + 3;
        }
    }

    private void drawPolarityRadar(GuiGraphics gg, IntRect r) {
        int cx = r.centerX();
        int cy = r.centerY();
        int radius = Math.min(r.w, r.h) / 2 - 10;

        drawCircleOutline(gg, cx, cy, radius, 0xFFB0B0B0);

        // стрелку разворачиваем в противоположную сторону
        double angleRad = Math.toRadians(360.0 - Background.currentPolarityDeg);
        int ex = (int) Math.round(cx + radius * Math.cos(angleRad));
        int ey = (int) Math.round(cy - radius * Math.sin(angleRad));
        drawThickLine(gg, cx, cy, ex, ey, POLARITY_LINE_THICKNESS, POLARITY_LINE_COLOR);
    }

    private void drawFrequencyOscilloscope(GuiGraphics gg, IntRect r) {
        int cx = r.centerX();
        int cy = r.centerY();
        int radius = Math.min(r.w, r.h) / 2 - 10;
        drawCircleOutline(gg, cx, cy, radius, 0xFFB0B0B0);

        int left = cx - radius + 6;
        int right = cx + radius - 6;
        int y = cy;

        int frequencyBars = computeFrequencyBars(Background.currentFrequency, Background.targetFrequency);

        if (frequencyBars > 0) {
            double norm = frequencyBars / 10.0;
            double amplitude = (radius - 14) * 0.7 * norm;
            double speed = 4.5; //скорость волны
            for (int x = left; x <= right; x++) {
                double t = (x - left) / 32.0;
                int wy = (int) Math.round(y + Math.sin(t + Background.timeSeconds * speed) * amplitude);
                gg.fill(x, wy, x + 1, wy + 1, 0xFF40E0FF);
            }
        } else {
            gg.hLine(left, right, y, 0xFF808080);
        }
    }

    // r2: звёзды + вращающийся предмет
    private void renderArea2Content(GuiGraphics gg, IntRect r2) {
        int pad = 6;
        int wrapW = Math.max(1, r2.w - pad * 2);
        int wrapH = Math.max(1, r2.h - pad * 2);
        for (int i = 0; i < STAR_COUNT; i++) {
            int bx = starXs[i] - (r2.x + pad);
            int by = starYs[i] - (r2.y + pad);
            int sx = r2.x + pad + floorMod((int)Math.floor(bx + starOffsetX), wrapW);
            int sy = r2.y + pad + floorMod((int)Math.floor(by + starOffsetY), wrapH);
            gg.fill(sx, sy, sx + 1, sy + 1, 0xFFFFFFFF);
        }

        int itemX = r2.centerX();
        int itemY = r2.centerY();

        gg.pose().pushPose();
        gg.pose().translate(itemX, itemY, 0);
        gg.pose().mulPose(com.mojang.math.Axis.ZP.rotationDegrees((float)(Background.timeSeconds * 60.0)));
        gg.pose().scale(ITEM_SCALE, ITEM_SCALE, 1f);
        gg.pose().translate(-8, -8, 0);

        renderItemSprite(gg, demoStack, 0, 0);

        gg.pose().popPose();
    }

    // Рисуем иконку предмета как quad из атласа
    private void renderItemSprite(GuiGraphics gg, net.minecraft.world.item.ItemStack stack, int x, int y) {
        Minecraft mc = Minecraft.getInstance();
        BakedModel model = mc.getItemRenderer().getModel(stack, null, null, 0);
        TextureAtlasSprite sprite = model.getParticleIcon();
        if (sprite == null) return;

        RenderSystem.setShader(GameRenderer::getPositionTexShader);
        RenderSystem.setShaderTexture(0, sprite.atlasLocation());
        RenderSystem.setShaderColor(1f, 1f, 1f, 1f);

        Matrix4f pose = gg.pose().last().pose();

        float u0 = sprite.getU0();
        float v0 = sprite.getV0();
        float u1 = sprite.getU1();
        float v1 = sprite.getV1();

        float x0 = x;
        float y0 = y;
        float x1 = x + 16f;
        float y1 = y + 16f;
        float z  = 0f;

        Tesselator tess = Tesselator.getInstance();
        BufferBuilder buf = tess.getBuilder();
        buf.begin(VertexFormat.Mode.QUADS, DefaultVertexFormat.POSITION_TEX);
        buf.vertex(pose, x0, y1, z).uv(u0, v1).endVertex();
        buf.vertex(pose, x1, y1, z).uv(u1, v1).endVertex();
        buf.vertex(pose, x1, y0, z).uv(u1, v0).endVertex();
        buf.vertex(pose, x0, y0, z).uv(u0, v0).endVertex();
        tess.end();
    }

    private void ensurePixelRT(int w, int h) {
        if (pixelRT != null && pixelRT.width == w && pixelRT.height == h) return;
        if (pixelRT != null) {
            pixelRT.destroyBuffers();
            pixelRT = null;
        }
        pixelRT = new TextureTarget(w, h, false, false);
        pixelRT.setClearColor(0f, 0f, 0f, 0f);
        pixelRT.clear(false);
    }

    private void copyScreenAreaToPixelRT(IntRect r, int lowW, int lowH) {
        Minecraft mc = Minecraft.getInstance();
        RenderTarget main = mc.getMainRenderTarget();

        int fbW = main.width;
        int fbH = main.height;

        double sf = mc.getWindow().getGuiScale();

        int srcX0 = (int)Math.floor( (guiX + r.x * guiScale)           * sf );
        int srcY0 = (int)Math.floor( (guiY + r.y * guiScale)           * sf );
        int srcX1 = (int)Math.ceil ( (guiX + (r.x + r.w) * guiScale)   * sf );
        int srcY1 = (int)Math.ceil ( (guiY + (r.y + r.h) * guiScale)   * sf );

        int readY0 = fbH - srcY1;
        int readY1 = fbH - srcY0;

        GL30.glBindFramebuffer(GL30.GL_READ_FRAMEBUFFER, main.frameBufferId);
        GL30.glBindFramebuffer(GL30.GL_DRAW_FRAMEBUFFER, pixelRT.frameBufferId);

        GL30.glBlitFramebuffer(
                srcX0, readY0, srcX1, readY1,
                0, 0, lowW, lowH,
                GL11.GL_COLOR_BUFFER_BIT, GL11.GL_LINEAR
        );

        main.bindWrite(true);
    }

    private void blitPixelRTToArea(GuiGraphics gg, IntRect r) {
        RenderSystem.setShader(GameRenderer::getPositionTexShader);
        RenderSystem.setShaderColor(1f, 1f, 1f, 1f);
        RenderSystem.setShaderTexture(0, pixelRT.getColorTextureId());

        GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_NEAREST);
        GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_NEAREST);

        Matrix4f pose = gg.pose().last().pose();

        float u0 = 0f, v0 = 0f, u1 = 1f, v1 = 1f;

        Tesselator tess = Tesselator.getInstance();
        BufferBuilder buf = tess.getBuilder();
        buf.begin(VertexFormat.Mode.QUADS, DefaultVertexFormat.POSITION_TEX);

        float x0 = r.x,       y0 = r.y;
        float x1 = r.x + r.w, y1 = r.y + r.h;
        float z  = 0f;

        buf.vertex(pose, x0, y1, z).uv(u0, v1).endVertex();
        buf.vertex(pose, x1, y1, z).uv(u1, v1).endVertex();
        buf.vertex(pose, x1, y0, z).uv(u1, v0).endVertex();
        buf.vertex(pose, x0, y0, z).uv(u0, v0).endVertex();

        tess.end();
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

    private void drawCircleOutline(GuiGraphics gg, int cx, int cy, int radius, int color) {
        int steps = Math.max(64, (int) (radius * 4.0));
        int prevX = (int) Math.round(cx + radius);
        int prevY = cy;
        for (int i = 1; i <= steps; i++) {
            double a = (Math.PI * 2.0) * i / steps;
            int x = (int) Math.round(cx + radius * Math.cos(a));
            int y = (int) Math.round(cy + radius * Math.sin(a));
            drawThickLine(gg, prevX, prevY, x, y, 1, color);
            prevX = x; prevY = y;
        }
    }

    private void debugRect(GuiGraphics gg, IntRect r, int color) {
        gg.fill(r.x, r.y, r.x + r.w, r.y + r.h, color);
        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFFFFFFFF);
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

    private static int angularDiffDeg(int a, int b) {
        int d = Math.abs(a - b) % 360;
        return (d > 180) ? 360 - d : d;
    }

    private static double angularDiffDegD(double a, double b) {
        double d = Math.abs(a - b) % 360.0;
        return (d > 180.0) ? 360.0 - d : d;
    }

    private static int computePolarityBars(double currentDeg, double targetDeg) {
        double diff = angularDiffDegD(currentDeg, targetDeg);
        if (diff > 25.0) return 0;
        if (diff <= 2.0) return 10;
        double a = -9.0 / 23.0;
        double b = 10.0 + (18.0 / 23.0);
        int bars = (int) Math.round(a * diff + b);
        return clamp(bars, 1, 10);
    }

    private static int computeFrequencyBars(double current, double target) {
        double diff = Math.abs(current - target);
        if (diff > 75.0) return 0;
        if (diff <= 1.0) return 10;
        double a = -9.0 / 74.0;
        double b = 10.0 - a;
        int bars = (int) Math.round(a * diff + b);
        return clamp(bars, 1, 10);
    }

    // ========= Фоновый тикер: тикает всегда, независимо от GUI =========
    private static void onClientTick(TickEvent.ClientTickEvent event) {
        if (event.phase != TickEvent.Phase.END) return;
        Minecraft mc = Minecraft.getInstance();
        if (mc == null) return;

        long now = System.nanoTime();
        if (Background.lastNano < 0) Background.lastNano = now;
        double dt = (now - Background.lastNano) / 1_000_000_000.0;
        Background.lastNano = now;
        if (dt <= 0) return;
        if (dt > 0.5) dt = 0.05; // защита от больших скачков

        //ограничения скорости
        Background.polaritySpeedPerSec  = clamp(Background.polaritySpeedPerSec,  POLARITY_SPEED_MIN,  POLARITY_SPEED_MAX);
        Background.frequencySpeedPerSec = clamp(Background.frequencySpeedPerSec, FREQUENCY_SPEED_MIN, FREQUENCY_SPEED_MAX);

        // 1) Собственные скорости игрока (крутилки)
        Background.currentPolarityDeg = wrapAngle(Background.currentPolarityDeg + Background.polaritySpeedPerSec * dt);
        Background.currentFrequency   = clampDouble(Background.currentFrequency + Background.frequencySpeedPerSec * dt, 0, 999);

        // 2) Дрейф от погоды (дискретно: 0 / 0.1 / 0.2), лимиты: дождь 0.2/5с, гроза 0.2/с
        if (mc.level != null) {
            boolean thunder = mc.level.isThundering();
            boolean rain    = mc.level.isRaining();
            double ratePerSec = 0.0; // сколько «бюджета» накапливаем в секунду
            if (thunder)       ratePerSec = 0.2;       // 0.2 в секунду
            else if (rain)     ratePerSec = 0.2 / 5.0; // 0.2 за 5 секунд

            if (ratePerSec > 0) {
                // накапливаем бюджет (отдельно для каждого параметра), максимум — 0.2
                Background.driftBudgetPol  = clampDouble(Background.driftBudgetPol  + ratePerSec * dt, 0.0, 0.2);
                Background.driftBudgetFreq = clampDouble(Background.driftBudgetFreq + ratePerSec * dt, 0.0, 0.2);

                // если накопили достаточно — тратим один дискретный шаг на параметр за тик
                if (Background.driftBudgetPol >= 0.1) {
                    double step = (Background.driftBudgetPol >= 0.2 && Background.noiseRnd.nextBoolean()) ? 0.2 : 0.1;
                    Background.driftBudgetPol -= step;
                    double sign = Background.noiseRnd.nextBoolean() ? 1.0 : -1.0;
                    Background.currentPolarityDeg = wrapAngle(Background.currentPolarityDeg + sign * step);
                }
                if (Background.driftBudgetFreq >= 0.1) {
                    double step = (Background.driftBudgetFreq >= 0.2 && Background.noiseRnd.nextBoolean()) ? 0.2 : 0.1;
                    Background.driftBudgetFreq -= step;
                    double sign = Background.noiseRnd.nextBoolean() ? 1.0 : -1.0;
                    Background.currentFrequency = clampDouble(Background.currentFrequency + sign * step, 0, 999);
                }
            } else {
                // погоды нет — бюджет обнуляем, чтобы не «выстреливало» потом
                Background.driftBudgetPol = 0.0;
                Background.driftBudgetFreq = 0.0;
            }
        }

        Background.timeSeconds += dt;

        // 3) Детектор тикает всегда
        double detRate = getDetectorRatePerSec(mc);
        Background.detectorPercent = clampDouble(Background.detectorPercent + detRate * dt, 0.0, 100.0);

        // 4) Вычисление выходов (нелинейно, с «прилипанием»)
        double polPct = computePolarityPercentFineStatic(Background.currentPolarityDeg, Background.targetPolarityDeg, mc);
        double frqPct = computeFrequencyPercentFineStatic(Background.currentFrequency,   Background.targetFrequency,   mc);
        if (Background.currentPolarityDir != Background.targetPolarityDir) polPct = 0.0;

        Background.polarityOutputPercent  = polPct;
        Background.frequencyOutputPercent = frqPct;

        double alpha = 1.0 - Math.exp(-8.0 * dt);
        if (Double.isNaN(Background.polarityOutputPercentSmoothed))  Background.polarityOutputPercentSmoothed  = polPct;
        if (Double.isNaN(Background.frequencyOutputPercentSmoothed)) Background.frequencyOutputPercentSmoothed = frqPct;
        Background.polarityOutputPercentSmoothed  += (polPct - Background.polarityOutputPercentSmoothed)  * alpha;
        Background.frequencyOutputPercentSmoothed += (frqPct - Background.frequencyOutputPercentSmoothed) * alpha;

        // 5) Загрузка — от output data, тикает всегда
        double polNorm  = clampDouble(Background.polarityOutputPercentSmoothed  / 100.0, 0.0, 1.0);
        double freqNorm = clampDouble(Background.frequencyOutputPercentSmoothed / 100.0, 0.0, 1.0);
        double normalized = polNorm * freqNorm;

        if (normalized > 0.0 && Background.downloadedPercent < 100.0) {
            double perSecondAtFull = getDownloadRatePercentPerSecAtFull(mc); // downloadSpeed/10 %/с
            Background.downloadedPercent = clampDouble(
                    Background.downloadedPercent + dt * perSecondAtFull * normalized,
                    0.0, 100.0
            );
        }
    }

    // ======= Статические вспомогательные вычисления для фоновой логики =======
    private static double computePolarityPercentFineStatic(double currentDeg, double targetDeg, Minecraft mc) {
        double diff  = angularDiffDegD(currentDeg, targetDeg);
        double width = Math.max(1e-6, getPolarityFilterWidth(mc));
        double p     = getSharpnessExpFromWidth(width);
        double x     = diff / width;
        double val   = 1.0 - Math.pow(x, p);
        if (val < 0.0) val = 0.0;
        double pct   = val * 100.0;
        return topSnapTo100Static(pct, width);
    }

    private static double computeFrequencyPercentFineStatic(double current, double target, Minecraft mc) {
        double diff  = Math.abs(current - target);
        double width = Math.max(1e-6, getFrequencyFilterWidth(mc));
        double p     = getSharpnessExpFromWidth(width);
        double x     = diff / width;
        double val   = 1.0 - Math.pow(x, p);
        if (val < 0.0) val = 0.0;
        double pct   = val * 100.0;
        return topSnapTo100Static(pct, width);
    }

    private static double getSharpnessExpFromWidth(double widthValue) {
        double t = invLerpClamped(EASE_MIN, EASE_MAX, widthValue);
        return lerp(SHARP_P_MIN, SHARP_P_MAX, t);
    }

    private static double topSnapTo100Static(double percent, double widthValue) {
        double t   = invLerpClamped(EASE_MIN, EASE_MAX, widthValue);
        double eps = lerp(TOP_SNAP_EPS_MIN, TOP_SNAP_EPS_MAX, t);
        return (percent >= 100.0 - eps) ? 100.0 : percent;
    }

    private static double getDetectorRatePerSec(Minecraft mc) {
        if (mc.player == null) return DETECTOR_RATE_DEFAULT;
        double v = mc.player
                .getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                .map(vars -> vars.DetectorSpeed)
                .orElse(DETECTOR_RATE_DEFAULT);
        return (v <= 0) ? DETECTOR_RATE_DEFAULT : v;
    }

    private static double getDownloadRatePercentPerSecAtFull(Minecraft mc) {
        if (mc.player == null) return DOWNLOAD_SPEED_DEFAULT / 10.0;
        double v = mc.player
                .getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                .map(vars -> vars.downloadSpeed)
                .orElse(DOWNLOAD_SPEED_DEFAULT);
        if (v <= 0) return 0.0;
        return v / 10.0; // 1 -> 0.1%/с; 2 -> 0.2%/с; ...
    }

    private static double getPolarityFilterWidth(Minecraft mc) {
        if (mc.player == null) return POLARITY_WIDTH_DEFAULT;
        double v = mc.player
                .getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                .map(vars -> vars.polarityFilterWidth)
                .orElse(POLARITY_WIDTH_DEFAULT);
        return (v > 0) ? v : POLARITY_WIDTH_DEFAULT;
    }

    private static double getFrequencyFilterWidth(Minecraft mc) {
        if (mc.player == null) return FREQUENCY_WIDTH_DEFAULT;
        double v = mc.player
                .getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                .map(vars -> vars.frequencyFilterWidth)
                .orElse(FREQUENCY_WIDTH_DEFAULT);
        return (v > 0) ? v : FREQUENCY_WIDTH_DEFAULT;
    }

    // ============================= Утилиты =============================
    private static int clamp(int v, int min, int max) { return Math.max(min, Math.min(max, v)); }
    private static double clampDouble(double v, double min, double max) { return Math.max(min, Math.min(max, v)); }
    private static int floorMod(int x, int mod) { int r = x % mod; return (r < 0) ? r + mod : r; }
    private static double wrapAngle(double deg) { double d = deg % 360.0; return (d < 0) ? d + 360.0 : d; }

    private static double lerp(double a, double b, double t) { return a + (b - a) * t; }
    private static double invLerpClamped(double a, double b, double v) {
        if (b == a) return 0.0;
        double t = (v - a) / (b - a);
        return clampDouble(t, 0.0, 1.0);
    }

    // ============================= Прямоугольник =============================
    private static class IntRect {
        final int x, y, w, h;
        IntRect(int x, int y, int w, int h) { this.x = x; this.y = y; this.w = w; this.h = h; }
        int centerX() { return x + w / 2; }
        int centerY() { return y + w / 2 - (w - h) / 2; } // не критично, можно оставить прежний расчёт
        boolean contains(int mx, int my) { return mx >= x && mx < x + w && my >= y && my < y + h; }
    }
}
