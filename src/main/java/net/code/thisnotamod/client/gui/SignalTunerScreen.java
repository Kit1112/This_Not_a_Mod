package net.code.thisnotamod.client.gui;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import com.mojang.blaze3d.pipeline.RenderTarget;
import com.mojang.blaze3d.pipeline.TextureTarget;
import com.mojang.blaze3d.systems.RenderSystem;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.renderer.GameRenderer;
import net.minecraft.client.resources.model.BakedModel;
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
import net.minecraft.core.registries.BuiltInRegistries;

import net.minecraft.client.resources.language.I18n; // локализация
import net.minecraft.client.resources.sounds.SimpleSoundInstance;
import net.minecraft.sounds.SoundEvents;


import net.code.thisnotamod.world.inventory.SignalTunerMenu;

import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.TickEvent;

import java.util.Locale;




import org.lwjgl.glfw.GLFW;

/**
 * Экран тюнера сигнала.
 * Игровая логика вынесена в статический Background и тикает даже при закрытом GUI.
 */
public class SignalTunerScreen extends AbstractContainerScreen<SignalTunerMenu> {

    // --- ключи локализации UI ---
    private static final String K_DETECTOR_STATUS   = "signalmanager.ui.tuner.label.detector_status";
    private static final String K_OBJECT             = "signalmanager.ui.tuner.label.object";
    private static final String K_SIGNAL_QUALITY    = "signalmanager.ui.tuner.label.signal_quality";
    private static final String K_SIGNAL_FREQUENCY  = "signalmanager.ui.tuner.label.signal_frequency";
    private static final String K_DOWNLOADED        = "signalmanager.ui.tuner.label.downloaded";
    private static final String K_POLARITY_FILTER   = "signalmanager.ui.tuner.label.polarity_filter";
    private static final String K_FILTER_OFFSET     = "signalmanager.ui.tuner.label.filter_offset";
    private static final String K_OFFSET_SPEED      = "signalmanager.ui.tuner.label.offset_speed";
    private static final String K_OUTPUT_DATA       = "signalmanager.ui.tuner.label.output_data";
    private static final String K_FREQUENCY_FILTER  = "signalmanager.ui.tuner.label.frequency_filter";

    private static final String K_VAL_NONE          = "signalmanager.ui.tuner.value.none";
    private static final String K_VAL_LOW           = "signalmanager.ui.tuner.value.low";
    private static final String K_VAL_MIDDLE        = "signalmanager.ui.tuner.value.middle";

    private static final String K_UNIT_DEG_PER_S    = "signalmanager.ui.tuner.unit.deg_per_s";
    private static final String K_UNIT_HZ_PER_S     = "signalmanager.ui.tuner.unit.hz_per_s";

    private static final class Background {
        // Таргеты — используются только когда есть сигнал
        static int    targetPolarityDir  = clamp(1, 0, 2);
        static double targetPolarityDeg  = wrapAngle(25.0);
        static double targetFrequency    = clampDouble(75.0, 0, 1000);

        // Текущие значения "ручек"/регуляторов
        static int    currentPolarityDir = 0;
        static double currentPolarityDeg = 0.0;
        static double currentFrequency   = 0.0;

        static int polaritySpeedPerSec   = 0;
        static int frequencySpeedPerSec  = 0;

        // Детектор и загрузка
        static double detectorPercent     = 0.0;  // 0..100 — влияет на пикселизацию области 2
        static double downloadedPercent   = 0.0;  // прогресс скачивания

        // Выход фильтров (расчётные проценты совпадения)
        static double polarityOutputPercent              = 0.0;
        static double frequencyOutputPercent             = 0.0;
        static double polarityOutputPercentSmoothed      = 0.0;
        static double frequencyOutputPercentSmoothed     = 0.0;

        // Тайминг
        static long   lastTickNano   = -1L;
        static long   lastRenderNano = -1L;
        static double timeSeconds = 0.0;

        static final java.util.Random noiseRnd = new java.util.Random(0x612D_BEEF);

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

    // Текущее "состояние сигнала"
    private static String sDetectedObjectKey = null;    // lang-ключ объекта
    private static String sQuality = null;              // "low|middle|high"
    private static String sFrequency = null;            // "low|middle|high"
    private static ResourceLocation sObjectImageTex = null; // текстура 16×16 предмета

    // Простой демо-рендер айтема (если текстуры нет) — не используется при отсутствии сигнала
    private final net.minecraft.world.item.ItemStack demoStack =
            new net.minecraft.world.item.ItemStack(net.minecraft.world.item.Items.DIAMOND);

    /** Есть ли активный сигнал? */
    private static boolean hasSignal() {
        return sDetectedObjectKey != null && !sDetectedObjectKey.isBlank();
    }

    /** Полная очистка сигнала (кнопка Delete Signal) */
    private static void clearSignal() {
        sDetectedObjectKey = null;
        sQuality = null;
        sFrequency = null;
        sObjectImageTex = null;

        Background.detectorPercent = 0.0;
        Background.downloadedPercent = 0.0;

        // Выходы фильтров в ноль (и сглаженные значения тоже)
        Background.polarityOutputPercent = 0.0;
        Background.frequencyOutputPercent = 0.0;
        Background.polarityOutputPercentSmoothed = 0.0;
        Background.frequencyOutputPercentSmoothed = 0.0;
    }

    // Внешние вызовы (из сканера)
    public static void applyPickedSignal(net.code.thisnotamod.client.SignalPicker.PickedSignal p) {
        if (p == null) return;

        sDetectedObjectKey = p.objectNameKey;
        sQuality           = p.quality;
        sFrequency         = p.frequency;
        sObjectImageTex    = p.objectImageTex;

        Background.targetPolarityDir = clamp(p.targetPolarityDir, 0, 2);
        Background.targetPolarityDeg = wrapAngle(p.targetPolarityDeg);
        Background.targetFrequency   = clampDouble(p.targetFrequency, 0, 1000);

        // Детектор активируется только когда сигнал есть
        Background.detectorPercent   = 0.0;
        Background.downloadedPercent = 0.0;
    }

    public static void applyCapturedSignal(String displayNameKeyOrRaw,
                                           ResourceLocation texture,
                                           String quality,
                                           String frequency,
                                           int dir, double deg, double freq) {
        sDetectedObjectKey = displayNameKeyOrRaw;
        sQuality           = quality;
        sFrequency         = frequency;
        sObjectImageTex    = texture;

        Background.targetPolarityDir = clamp(dir, 0, 2);
        Background.targetPolarityDeg = wrapAngle(deg);
        Background.targetFrequency   = clampDouble(freq, 0, 1000);

        Background.detectorPercent   = 0.0;
        Background.downloadedPercent = 0.0;
    }

    @Override
    protected void renderLabels(GuiGraphics gg, int mouseX, int mouseY) { }

    public static final int VIRTUAL_W = 640;
    public static final int VIRTUAL_H = 360;

    private int guiX, guiY;
    private float guiScale;

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
    private static final int BTN_DELETE_Y_OFFSET = -19;
    private static final float ITEM_SCALE = 1.35f;

    private static final ResourceLocation BACKGROUND =
            new ResourceLocation("thisnotamod", "textures/screens/downloadpanelscreen.png");

    private static final boolean DEBUG_BUTTONS = true;
    private static final int CIRCLE_OUTLINE_THICKNESS = 1;
    private static final int  POLARITY_LINE_THICKNESS = 1;
    private static final int  POLARITY_LINE_COLOR     = 0xFFFFFFFF;

    private static final double DETECTOR_RATE_DEFAULT = 1.0;
    private static final double DOWNLOAD_SPEED_DEFAULT = 1.0;
    private static final double POLARITY_WIDTH_DEFAULT  = 18.0;
    private static final double FREQUENCY_WIDTH_DEFAULT = 60.0;

    private static final int POLARITY_SPEED_MIN  = -360;
    private static final int POLARITY_SPEED_MAX  =  360;
    private static final int FREQUENCY_SPEED_MIN = -1000;
    private static final int FREQUENCY_SPEED_MAX =  1000;

    private static final double EASE_MIN = 0.5;
    private static final double EASE_MAX = 100.0;
    private static final double SHARP_P_MIN = 0.60;
    private static final double SHARP_P_MAX = 0.95;
    private static final double TOP_SNAP_EPS_MIN = 0.00;
    private static final double TOP_SNAP_EPS_MAX = 0.35;

    private static final int STAR_COUNT = 80;
    private int[] starXs = null, starYs = null;
    private long starSeed = 12345L;

    private static final double STAR_SPEED_X = -18.0;
    private static final double STAR_SPEED_Y = -6.0;
    private double starOffsetX = 0.0;
    private double starOffsetY = 0.0;

    private TextureTarget pixelRT = null;
    private static final int PIXEL_MIN_RES = 2;
    private static final int OBJECT_TEX_SIZE = 16;

    // Кнопки управления
private final IntRect btn0 = new IntRect(56, 285, 15, 15); 
private final IntRect btn1 = new IntRect(125, 289, 22, 22); 
private final IntRect btn2 = new IntRect(153, 289, 22, 22); 
private final IntRect btn3 = new IntRect(181, 289, 22, 22); 
private final IntRect btn4 = new IntRect(125, 317, 22, 22); 
private final IntRect btn5 = new IntRect(153, 317, 22, 22); 
private final IntRect btn6 = new IntRect(181, 317, 22, 22); 
private final IntRect btnDelete = new IntRect(428, 308, 26, 26); 
private final IntRect btnPhone = new IntRect(550, 297, 15, 54); 
private final IntRect btnSave = new IntRect(238, 310, 22, 22);


    // === DEBUG: подстройка позиций кнопок на лету ===
private static final int BTN_COUNT = 10; // 0..6, 7=delete, 8=phone, 9=save
private int selectedBtn = 0; // какой сейчас двигаем
private final int[] btnOffX = new int[BTN_COUNT];
private final int[] btnOffY = new int[BTN_COUNT];

private IntRect baseRectByIndex(int idx) {
    switch (idx) {
        case 0: return btn0;
        case 1: return btn1;
        case 2: return btn2;
        case 3: return btn3;
        case 4: return btn4;
        case 5: return btn5;
        case 6: return btn6;
        case 7: return btnDelete;
        case 8: return btnPhone;
        case 9: return btnSave;
        default: return btnDelete;
    }
}

private IntRect rectByIndex(int idx) {
    IntRect b = baseRectByIndex(idx);
    return new IntRect(b.x + btnOffX[idx], b.y + btnOffY[idx], b.w, b.h);
}


    public SignalTunerScreen(SignalTunerMenu menu, Inventory inv, Component title) {
        super(menu, inv, title);
        this.imageWidth = VIRTUAL_W;
        this.imageHeight = VIRTUAL_H;
        Background.initOnce();
    }

    @Override
    public boolean isPauseScreen() { return false; }

    @Override
    protected void renderBg(GuiGraphics gg, float partialTick, int mouseX, int mouseY) {
        long now = System.nanoTime();
        if (Background.lastRenderNano < 0) Background.lastRenderNano = now;
        double dt = (now - Background.lastRenderNano) / 1_000_000_000.0;
        if (dt < 0) dt = 0;
        Background.lastRenderNano = now;

        starOffsetX += STAR_SPEED_X * dt;
        starOffsetY += STAR_SPEED_Y * dt;

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

        if (starXs == null || starYs == null) {
            java.util.Random rnd = new java.util.Random(starSeed);
            starXs = new int[STAR_COUNT];
            starYs = new int[STAR_COUNT];
            for (int i = 0; i < STAR_COUNT; i++) {
                starXs[i] = r2.x + 6 + rnd.nextInt(Math.max(1, r2.w - 12));
                starYs[i] = r2.y + 6 + rnd.nextInt(Math.max(1, r2.h - 12));
            }
        }

        // Базовый контент области 2 (звёзды + объект при наличии сигнала)
        renderArea2Content(gg, r2);

        gg.flush();

        // Пикселизация ТОЛЬКО при наличии сигнала
        if (hasSignal()) {
            IntRect px = insetRect(r2, 2, 1, 2, 1);

            double tDet = clampDouble(Background.detectorPercent / 100.0, 0.0, 1.0);
            int lowW = Math.max(PIXEL_MIN_RES, (int)Math.round(PIXEL_MIN_RES + tDet * (px.w - PIXEL_MIN_RES)));
            int lowH = Math.max(PIXEL_MIN_RES, (int)Math.round(PIXEL_MIN_RES + tDet * (px.h - PIXEL_MIN_RES)));

            ensurePixelRT(lowW, lowH);
            copyScreenAreaToPixelRT(px, lowW, lowH);
            blitPixelRTToArea(gg, px);
        } else {
            // «NO SIGNAL» — мерцание красным и крупная надпись
            boolean red = ((int)Math.floor(Background.timeSeconds * 2.0)) % 2 == 1; // 2 Гц
            int fillCol = red ? 0xFF550000 : 0xFF000000;
            gg.fill(r2.x + 1, r2.y + 1, r2.x + r2.w - 1, r2.y + r2.h - 1, fillCol);

            gg.pose().pushPose();
            gg.pose().translate(r2.x + r2.w / 2f, r2.y + r2.h / 2f, 0);
            gg.pose().scale(2.0f, 2.0f, 1f);
            String txt = "NO SIGNAL";
            int tw = this.font.width(txt);
            int th = this.font.lineHeight;
            gg.drawString(this.font, txt, -tw / 2, -th / 2, 0xFFFF4040, false);
            gg.pose().popPose();
        }

        // Рендер кругов/осциллографа и блоков текста
        drawPolarityRadar(gg, r0);
        drawFrequencyOscilloscope(gg, r3);

        drawPolarityTextBlock(gg, r1);
        drawFrequencyTextBlock(gg, r4);

        boolean ready = hasSignal() && (Background.detectorPercent >= 100.0 - 1e-6);

        int line = 0;
        double detectorShown = hasSignal() ? Background.detectorPercent : 0.0;
        drawLabelValue(gg, r5, line++, I18n.get(K_DETECTOR_STATUS),
                String.format(Locale.ROOT, "%.1f%%", detectorShown),
                0xFFFFFFFF, hasSignal() ? 0xFF00FF00 : 0xFFFF4040);

        // Имя объекта
        String objectNameShown = ready ? "unknown" : "none";
		if (ready) {
            String langKey = sDetectedObjectKey.trim();
            int colon = langKey.indexOf(':');
            if (colon >= 0) langKey = langKey.substring(colon + 1);
            String translated = I18n.get(langKey);
            objectNameShown = (translated != null && !translated.equals(langKey)) ? translated : langKey;
        }

        drawLabelValue(gg, r5, line++, I18n.get(K_OBJECT),
                objectNameShown,
                0xFFBBBBBB, 0xFFBBBBBB);

        // Качество
        String qualityShown = ready ? I18n.get(K_VAL_LOW) : "none";
if (ready && sQuality != null && !sQuality.isBlank()) {
            String qKey = "signalmanager.ui.tuner.value." + sQuality.toLowerCase(Locale.ROOT);
            String tr = I18n.get(qKey);
            qualityShown = (tr != null && !tr.equals(qKey)) ? tr : sQuality;
        }
        drawLabelValue(gg, r5, line++, I18n.get(K_SIGNAL_QUALITY),
                qualityShown,
                0xFFBBBBBB, 0xFFBBBBBB);

        // Частота (категория)
        String frequencyShown = ready ? I18n.get(K_VAL_MIDDLE) : "none";
if (ready && sFrequency != null && !sFrequency.isBlank()) {
            String fKey = "signalmanager.ui.tuner.value." + sFrequency.toLowerCase(Locale.ROOT);
            String tr = I18n.get(fKey);
            frequencyShown = (tr != null && !tr.equals(fKey)) ? tr : sFrequency;
        }
        drawLabelValue(gg, r5, line++, I18n.get(K_SIGNAL_FREQUENCY),
                frequencyShown,
                0xFFBBBBBB, 0xFFBBBBBB);
int dirClamped = Math.max(0, Math.min(2, Background.currentPolarityDir));
String dirKey;
switch (dirClamped) {
    case 0:  dirKey = "signalmanager.ui.scanner.polaritydir.left";   break;
    case 1:  dirKey = "signalmanager.ui.scanner.polaritydir.right";  break;
    default: dirKey = "signalmanager.ui.scanner.polaritydir.linear"; break;
}
String dirValue = I18n.get(dirKey);

drawLabelValue(gg, r5, line++, I18n.get("signalmanager.ui.scanner.polaritydir"),
        dirValue,
        0xFFBBBBBB, 0xFFBBBBBB);


        // Загрузка
        double downloadedShown = hasSignal() ? Background.downloadedPercent : 0.0;
        drawLabelValue(gg, r5, line++, I18n.get(K_DOWNLOADED),
                String.format(Locale.ROOT, "%.1f%%", downloadedShown),
                0xFF00FF00, 0xFF00FF00);
/*
        if (DEBUG_BUTTONS) {
    debugRect(gg, rectByIndex(0), 0x40FFFF00);
    debugRect(gg, rectByIndex(1), 0x40FFFFFF);
    debugRect(gg, rectByIndex(2), 0x40FFFFFF);
    debugRect(gg, rectByIndex(3), 0x40FFFFFF);
    debugRect(gg, rectByIndex(4), 0x4020FFFF);
    debugRect(gg, rectByIndex(5), 0x4020FFFF);
    debugRect(gg, rectByIndex(6), 0x4020FFFF);
    debugRect(gg, rectByIndex(7), 0x40FF2020); // delete
    debugRect(gg, rectByIndex(8), 0x4020FF20); // phone
    debugRect(gg, rectByIndex(9), 0x4020FF80); // save

    // Выделение выбранной кнопки и мини-подсказка
    IntRect sel = rectByIndex(selectedBtn);
    gg.renderOutline(sel.x - 2, sel.y - 2, sel.w + 4, sel.h + 4, 0xFFFFFF00);
    gg.drawString(this.font, "DBG[" + selectedBtn + "] x=" + sel.x + " y=" + sel.y,
            SCREEN_X + 8, SCREEN_Y + SCREEN_H + 6, 0xFFFFFF00, false);
}
*/
        gg.pose().popPose();
    }

    @Override
    public void render(GuiGraphics gg, int mouseX, int mouseY, float partialTick) {
        super.render(gg, mouseX, mouseY, partialTick);
        this.renderTooltip(gg, mouseX, mouseY);
        Component tip = getButtonTooltip(mouseX, mouseY);
if (tip != null) {
    gg.renderTooltip(this.font, tip, mouseX, mouseY);
}

    }

    @Override
    public boolean mouseClicked(double mouseX, double mouseY, int button) {
        if (button == 0 && isHovering(rectByIndex(0), mouseX, mouseY)) {
            Background.currentPolarityDir = (Background.currentPolarityDir + 1) % 3;
            playKnobSound();
            return true;
        }
      
        // Новая кнопка удаления сигнала
        if (button == 0 && isHovering(rectByIndex(7), mouseX, mouseY)) {

            clearSignal();
            return true;
        }
        // Кнопка phone: проиграть ванильный звук клика
if (button == 0 && isHovering(rectByIndex(8), mouseX, mouseY)) {
    Minecraft.getInstance().getSoundManager()
            .play(SimpleSoundInstance.forUI(SoundEvents.UI_BUTTON_CLICK, 1.0F));
    return true;
}
// Кнопка save: сгенерировать код координат и скопировать в буфер обмена
if (button == 0 && isHovering(rectByIndex(9), mouseX, mouseY)) {
    String dump = dumpCurrentButtonCode();
    Minecraft.getInstance().keyboardHandler.setClipboard(dump);
    System.out.println("[SignalTunerScreen] New button code:\n" + dump);
    if (Minecraft.getInstance().player != null) {
        Minecraft.getInstance().player.displayClientMessage(
                Component.translatable("signalmanager.ui.tuner.butsave"), true);
    }
    // Звук подтверждения
    Minecraft.getInstance().getSoundManager()
            .play(SimpleSoundInstance.forUI(SoundEvents.UI_BUTTON_CLICK, 1.0F));
    return true;
}

        return super.mouseClicked(mouseX, mouseY, button);
    }

    @Override
    public boolean mouseScrolled(double mouseX, double mouseY, double delta) {
        int sign = delta > 0 ? 1 : -1;

        if (isHovering(rectByIndex(1), mouseX, mouseY)) {
            Background.polaritySpeedPerSec += sign * 1;
            Background.polaritySpeedPerSec = clamp(Background.polaritySpeedPerSec, POLARITY_SPEED_MIN, POLARITY_SPEED_MAX);
			playKnobSound();
            return true;
        }
        if (isHovering(rectByIndex(2), mouseX, mouseY)) {
            Background.polaritySpeedPerSec += sign * 5;
            Background.polaritySpeedPerSec = clamp(Background.polaritySpeedPerSec, POLARITY_SPEED_MIN, POLARITY_SPEED_MAX);
			playKnobSound();
            return true;
        }
        if (isHovering(rectByIndex(3), mouseX, mouseY)) {
            Background.polaritySpeedPerSec += sign * 15;
            Background.polaritySpeedPerSec = clamp(Background.polaritySpeedPerSec, POLARITY_SPEED_MIN, POLARITY_SPEED_MAX);
			playKnobSound();
            return true;
        }

        if (isHovering(rectByIndex(4), mouseX, mouseY)) {
            Background.frequencySpeedPerSec += sign * 1;
            Background.frequencySpeedPerSec = clamp(Background.frequencySpeedPerSec, FREQUENCY_SPEED_MIN, FREQUENCY_SPEED_MAX);
			playKnobSound();
            return true;
        }
        if (isHovering(rectByIndex(5), mouseX, mouseY)) {
            Background.frequencySpeedPerSec += sign * 10;
            Background.frequencySpeedPerSec = clamp(Background.frequencySpeedPerSec, FREQUENCY_SPEED_MIN, FREQUENCY_SPEED_MAX);
			playKnobSound();
            return true;
        }
        if (isHovering(rectByIndex(6), mouseX, mouseY)) {
            Background.frequencySpeedPerSec += sign * 100;
            Background.frequencySpeedPerSec = clamp(Background.frequencySpeedPerSec, FREQUENCY_SPEED_MIN, FREQUENCY_SPEED_MAX);
			playKnobSound();
            return true;
        }

        return super.mouseScrolled(mouseX, mouseY, delta);
    }
/*
    @Override
public boolean keyPressed(int keyCode, int scanCode, int modifiers) {
    // Переключение выбранной кнопки [ и ]
    if (keyCode == GLFW.GLFW_KEY_RIGHT_BRACKET) { // ]
        selectedBtn = (selectedBtn + 1) % BTN_COUNT;
        return true;
    }
    if (keyCode == GLFW.GLFW_KEY_LEFT_BRACKET) { // [
        selectedBtn = (selectedBtn - 1 + BTN_COUNT) % BTN_COUNT;
        return true;
    }

    int step = ((modifiers & GLFW.GLFW_MOD_SHIFT) != 0) ? 5 : 1;

    // Стрелки двигают выбранную кнопку
    if (keyCode == GLFW.GLFW_KEY_LEFT)  { btnOffX[selectedBtn] -= step; return true; }
    if (keyCode == GLFW.GLFW_KEY_RIGHT) { btnOffX[selectedBtn] += step; return true; }
    if (keyCode == GLFW.GLFW_KEY_UP)    { btnOffY[selectedBtn] -= step; return true; }
    if (keyCode == GLFW.GLFW_KEY_DOWN)  { btnOffY[selectedBtn] += step; return true; }

    // R — сброс оффсета выбранной кнопки
    if (keyCode == GLFW.GLFW_KEY_R) {
        btnOffX[selectedBtn] = 0;
        btnOffY[selectedBtn] = 0;
        return true;
    }

    // Ctrl+S — вывести готовые строки и скопировать их в буфер обмена
    if ((modifiers & GLFW.GLFW_MOD_CONTROL) != 0 && keyCode == GLFW.GLFW_KEY_S) {
        String dump = dumpCurrentButtonCode();
        Minecraft.getInstance().keyboardHandler.setClipboard(dump);
        System.out.println("[SignalTunerScreen] New button code:\n" + dump);
        if (Minecraft.getInstance().player != null) {
            Minecraft.getInstance().player.displayClientMessage(Component.literal("Button code copied to clipboard"), true);
        }
        return true;
    }

    return super.keyPressed(keyCode, scanCode, modifiers);
}
*/

private String dumpCurrentButtonCode() {
    String[] names = {"btn0","btn1","btn2","btn3","btn4","btn5","btn6","btnDelete","btnPhone","btnSave"};
    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < BTN_COUNT; i++) {
        IntRect b = baseRectByIndex(i);
        int nx = b.x + btnOffX[i];
        int ny = b.y + btnOffY[i];
        sb.append("private final IntRect ").append(names[i])
          .append(" = new IntRect(").append(nx).append(", ").append(ny)
          .append(", ").append(b.w).append(", ").append(b.h).append(");\n");
    }
    return sb.toString();
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

    private void playKnobSound() {
    var opt = BuiltInRegistries.SOUND_EVENT.getOptional(new ResourceLocation("thisnotamod", "knob_sound"));
    opt.ifPresent(ev -> Minecraft.getInstance().getSoundManager().play(SimpleSoundInstance.forUI(ev, 1.0F)));
}


    private void drawLabelValue(GuiGraphics gg, IntRect r, int lineIdx,
                                String label, String value,
                                int labelColor, int valueColor) {
        final int lh = 10 + 4;
        final int padL = 10;
        final int padR = 10;
        final int y = r.y + 8 + lineIdx * lh;

        gg.drawString(this.font, label, r.x + padL, y, labelColor, false);

        if (value != null && !value.isEmpty()) {
            int vw = this.font.width(value);
            int vx = r.x + r.w - padR - vw;
            gg.drawString(this.font, value, vx, y, valueColor, false);
        }
    }

    private void drawPolarityTextBlock(GuiGraphics gg, IntRect r) {
        int line = 0;

        gg.drawString(this.font, I18n.get(K_POLARITY_FILTER), r.x + 10, r.y + 8 + line * (10 + 4), 0xFFFFFFFF, false);
        line++;

        drawLabelValue(gg, r, line++, I18n.get(K_FILTER_OFFSET),
                String.format(Locale.ROOT, "%.1f", Background.currentPolarityDeg),
                0xFFBBBBBB, 0xFFBBBBBB);

        drawLabelValue(gg, r, line++, I18n.get(K_OFFSET_SPEED),
                Background.polaritySpeedPerSec + " " + I18n.get(K_UNIT_DEG_PER_S),
                0xFFBBBBBB, 0xFFBBBBBB);

        drawLabelValue(gg, r, line, I18n.get(K_OUTPUT_DATA),
                String.format(Locale.ROOT, "%.1f%%", Background.polarityOutputPercent),
                0xFFBBBBBB, 0xFFE0C040);
    }

    private void drawFrequencyTextBlock(GuiGraphics gg, IntRect r) {
        int line = 0;

        gg.drawString(this.font, I18n.get(K_FREQUENCY_FILTER), r.x + 10, r.y + 8 + line * (10 + 4), 0xFFFFFFFF, false);
        line++;

        drawLabelValue(gg, r, line++, I18n.get(K_FILTER_OFFSET),
                String.format(Locale.ROOT, "%.1f", Background.currentFrequency),
                0xFFBBBBBB, 0xFFBBBBBB);

        drawLabelValue(gg, r, line++, I18n.get(K_OFFSET_SPEED),
                Background.frequencySpeedPerSec + " " + I18n.get(K_UNIT_HZ_PER_S),
                0xFFBBBBBB, 0xFFBBBBBB);

        drawLabelValue(gg, r, line, I18n.get(K_OUTPUT_DATA),
                String.format(Locale.ROOT, "%.1f%%", Background.frequencyOutputPercent),
                0xFFBBBBBB, 0xFFE0C040);
    }

    private void drawPolarityRadar(GuiGraphics gg, IntRect r) {
        int cx = r.centerX();
        int cy = r.centerY();
        int radius = Math.min(r.w, r.h) / 2 - 10;

        drawCircleOutline(gg, cx, cy, radius, 0xFFB0B0B0);

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

        double norm = clampDouble(Background.frequencyOutputPercentSmoothed / 100.0, 0.0, 1.0);

        if (norm > 0.0) {
            double amplitude = (radius - 14) * 0.7 * norm;
            double speed = 4.5;
            for (int x = left; x <= right; x++) {
                double t = (x - left) / 32.0;
                int wy = (int) Math.round(y + Math.sin(t + Background.timeSeconds * speed) * amplitude);
                gg.fill(x, wy, x + 1, wy + 1, 0xFF40E0FF);
            }
        } else {
            gg.hLine(left, right, y, 0xFF808080);
        }
    }

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

        if (!hasSignal()) {
    // Объект не показываем, пока нет сигнала
    return;
}


        int itemX = r2.centerX();
        int itemY = r2.centerY();

        gg.pose().pushPose();
        gg.pose().translate(itemX, itemY, 0);
        gg.pose().mulPose(com.mojang.math.Axis.ZP.rotationDegrees((float)(Background.timeSeconds * 60.0)));
        gg.pose().scale(ITEM_SCALE, ITEM_SCALE, 1f);
        gg.pose().translate(-8, -8, 0);

        if (sObjectImageTex != null) {
            RenderSystem.setShader(GameRenderer::getPositionTexShader);
            RenderSystem.setShaderTexture(0, sObjectImageTex);
            RenderSystem.setShaderColor(1f, 1f, 1f, 1f);
            gg.blit(sObjectImageTex, 0, 0, 0, 0, OBJECT_TEX_SIZE, OBJECT_TEX_SIZE, OBJECT_TEX_SIZE, OBJECT_TEX_SIZE);
        }

        gg.pose().popPose();
    }

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

    private static IntRect insetRect(IntRect r, int left, int top, int right, int bottom) {
        int nx = r.x + left;
        int ny = r.y + top;
        int nw = Math.max(0, r.w - left - right);
        int nh = Math.max(0, r.h - top - bottom);
        return new IntRect(nx, ny, nw, nh);
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

    private Component getButtonTooltip(double mouseX, double mouseY) {
    if (isHovering(rectByIndex(0), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.but0");
    if (isHovering(rectByIndex(1), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.but1");
    if (isHovering(rectByIndex(2), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.but2");
    if (isHovering(rectByIndex(3), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.but3");
    if (isHovering(rectByIndex(4), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.but4");
    if (isHovering(rectByIndex(5), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.but5");
    if (isHovering(rectByIndex(6), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.but6");
    if (isHovering(rectByIndex(7), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.butdel");
    if (isHovering(rectByIndex(8), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.butphone");
	if (isHovering(rectByIndex(9), mouseX, mouseY)) return Component.translatable("signalmanager.ui.tuner.butsave");
    return null;
}


    private static int angularDiffDeg(int a, int b) {
        int d = Math.abs(a - b) % 360;
        return (d > 180) ? 360 - d : d;
    }

    private static double angularDiffDegD(double a, double b) {
        double d = Math.abs(a - b) % 360.0;
        return (d > 180.0) ? 360.0 - d : d;
    }

    private static void onClientTick(TickEvent.ClientTickEvent event) {
        if (event.phase != TickEvent.Phase.END) return;
        Minecraft mc = Minecraft.getInstance();
        if (mc == null) return;

        long now = System.nanoTime();
        if (Background.lastTickNano < 0) Background.lastTickNano = now;
        double dt = (now - Background.lastTickNano) / 1_000_000_000.0;
        Background.lastTickNano = now;
        if (dt <= 0) return;
        if (dt > 0.5) dt = 0.05;

        Background.polaritySpeedPerSec  = clamp(Background.polaritySpeedPerSec,  -360,  360);
        Background.frequencySpeedPerSec = clamp(Background.frequencySpeedPerSec, -1000, 1000);

        Background.currentPolarityDeg = wrapAngle(Background.currentPolarityDeg + Background.polaritySpeedPerSec * dt);
        Background.currentFrequency   = clampDouble(Background.currentFrequency + Background.frequencySpeedPerSec * dt, 0, 1000);

        // Погодные дрейфы — не зависят от наличия сигнала (это на "ручке"), но небольшие
        if (mc.level != null) {
            boolean thunder = mc.level.isThundering();
            boolean rain    = mc.level.isRaining();
            double ratePerSec = 0.0;
            if (thunder)       ratePerSec = 0.2;
            else if (rain)     ratePerSec = 0.2 / 5.0;

            if (ratePerSec > 0) {
                Background.driftBudgetPol  = clampDouble(Background.driftBudgetPol  + ratePerSec * dt, 0.0, 0.2);
                Background.driftBudgetFreq = clampDouble(Background.driftBudgetFreq + ratePerSec * dt, 0.0, 0.2);

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
                    Background.currentFrequency = clampDouble(Background.currentFrequency + sign * step, 0, 1000);
                }
            } else {
                Background.driftBudgetPol = 0.0;
                Background.driftBudgetFreq = 0.0;
            }
        }

        Background.timeSeconds += dt;

        // Детектор работает только когда есть сигнал и заполняется постепенно
if (hasSignal()) {
    if (Background.detectorPercent < 100.0) {
        double rate = getDetectorRatePerSec(mc); // процентов в секунду
        Background.detectorPercent = clampDouble(
                Background.detectorPercent + rate * dt,
                0.0, 100.0
        );
    }
} else {
    // на всякий случай держим в нуле, если сигнала нет
    Background.detectorPercent = 0.0;
}


        // Расчёты фильтров только при наличии сигнала
        double polPct = 0.0;
        double frqPct = 0.0;

        if (hasSignal()) {
            polPct = computePolarityPercentFineStatic(Background.currentPolarityDeg, Background.targetPolarityDeg, mc);
            frqPct = computeFrequencyPercentFineStatic(Background.currentFrequency,   Background.targetFrequency,   mc);
            if (Background.currentPolarityDir != Background.targetPolarityDir) polPct = 0.0;
        }

        Background.polarityOutputPercent  = polPct;
        Background.frequencyOutputPercent = frqPct;

        double alpha = 1.0 - Math.exp(-8.0 * dt);
        if (Double.isNaN(Background.polarityOutputPercentSmoothed))  Background.polarityOutputPercentSmoothed  = polPct;
        if (Double.isNaN(Background.frequencyOutputPercentSmoothed)) Background.frequencyOutputPercentSmoothed = frqPct;
        Background.polarityOutputPercentSmoothed  += (polPct - Background.polarityOutputPercentSmoothed)  * alpha;
        Background.frequencyOutputPercentSmoothed += (frqPct - Background.frequencyOutputPercentSmoothed) * alpha;

        // Загрузка — только при наличии сигнала
        double polNorm  = hasSignal() ? clampDouble(Background.polarityOutputPercentSmoothed  / 100.0, 0.0, 1.0) : 0.0;
        double freqNorm = hasSignal() ? clampDouble(Background.frequencyOutputPercentSmoothed / 100.0, 0.0, 1.0) : 0.0;
        double normalized = polNorm * freqNorm;

        double perSecondAtFull = getDownloadRatePercentPerSecAtFull(mc);
        if (hasSignal() && normalized > 0.0 && Background.downloadedPercent < 100.0) {
            Background.downloadedPercent = clampDouble(
                    Background.downloadedPercent + dt * perSecondAtFull * normalized,
                    0.0, 100.0
            );
        }
    }

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
        return Math.max(0.0, v); // 1 => 1%/сек, 0 или меньше => не растёт
    }

    private static double getDownloadRatePercentPerSecAtFull(Minecraft mc) {
        if (mc.player == null) return DOWNLOAD_SPEED_DEFAULT / 10.0;
        double v = mc.player
                .getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                .map(vars -> vars.downloadSpeed)
                .orElse(DOWNLOAD_SPEED_DEFAULT);
        if (v <= 0) return 0.0;
        return v / 10.0;
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

    private static class IntRect {
        final int x, y, w, h;
        IntRect(int x, int y, int w, int h) { this.x = x; this.y = y; this.w = w; this.h = h; }
        int centerX() { return x + w / 2; }
        int centerY() { return y + w / 2 - (w - h) / 2; }
        boolean contains(int mx, int my) { return mx >= x && mx < x + w && my >= y && my < y + h; }
    }
}
