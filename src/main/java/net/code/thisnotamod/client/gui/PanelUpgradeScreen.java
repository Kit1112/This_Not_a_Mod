package net.code.thisnotamod.client.gui;

import com.mojang.blaze3d.systems.RenderSystem;
import net.code.thisnotamod.block.entity.TestUpgradeBlockEntity;
import net.code.thisnotamod.item.DriveItem;
import net.code.thisnotamod.world.inventory.PanelUpgradeMenu;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.client.resources.sounds.SimpleSoundInstance;
import net.minecraft.sounds.SoundEvents;

import java.util.Locale;
import java.util.Random;

/** Экран апгрейда сигнала. Размер и скейлинг полностью совпадают с PanelPlayback. */
public class PanelUpgradeScreen extends AbstractContainerScreen<AbstractContainerMenu> {

    // --- виртуальная геометрия и «чёрный экран» те же, что в PanelPlayback ---
    public static final int VIRTUAL_W = 640;
    public static final int VIRTUAL_H = 360;

    private static final int INSET_LEFT = 12, INSET_RIGHT = 12, INSET_TOP = 12, INSET_BOTTOM = 84;
    private static final int SCREEN_X = INSET_LEFT, SCREEN_Y = INSET_TOP;
    private static final int SCREEN_W = VIRTUAL_W - INSET_LEFT - INSET_RIGHT;
    private static final int SCREEN_H = VIRTUAL_H - INSET_TOP - INSET_BOTTOM;

    // нижняя панель с кнопками
    private static final int BTN_BAR_Y = SCREEN_Y + SCREEN_H + 20;

    // цвета
    private static final int LINE_WHITE   = 0xFFFFFFFF;
    private static final int TEXT_GREEN   = 0xFF00FF00;
    private static final int TEXT_CYAN    = 0xFF00D0FF;
    private static final int TEXT_YELLOW  = 0xFFFFFF00;
    private static final int TEXT_MAGENTA = 0xFFFF00FF;

    // 4 кнопки: Import/Export, START, STOP, placeholder
    private final IntRect btnImpExp   = new IntRect(SCREEN_X + 10,  BTN_BAR_Y, 24, 24);
    private final IntRect btnStart    = new IntRect(SCREEN_X + 46,  BTN_BAR_Y, 24, 24);
    private final IntRect btnStop     = new IntRect(SCREEN_X + 82,  BTN_BAR_Y, 24, 24);
    private final IntRect btnStub     = new IntRect(SCREEN_X + 118, BTN_BAR_Y, 24, 24);

    // скейл в окне
    private int guiX, guiY;
    private float guiScale;

    // генератор «шумового» текста
    private final Random rand = new Random();
        // статусная строка (импорт/экспорт/апгрейд)
    private int statusTicks = 0;
    private String statusText = "";
    private boolean lastHasImport = false;
    private int lastImportSignalId = -1;
    private int lastImportLevel = -1;


    public PanelUpgradeScreen(AbstractContainerMenu menu, Inventory inv, Component title) {
        super(menu, inv, title);
        this.imageWidth = VIRTUAL_W;
        this.imageHeight = VIRTUAL_H;
    }

    @Override public boolean isPauseScreen() { return false; }

    @Override
    protected void renderBg(GuiGraphics gg, float partialTick, int mouseX, int mouseY) {
        // затемнение вокруг
        RenderSystem.enableBlend();
        final int shade = 0xA0000000;
        int sw = this.width, sh = this.height;

        // вписываем 16:9
        float targetW = sw, targetH = sw * (9f / 16f);
        if (targetH > sh) { targetH = sh; targetW = sh * (16f / 9f); }
        guiX = Math.round((sw - targetW) / 2f);
        guiY = Math.round((sh - targetH) / 2f);
        guiScale = targetW / (float) VIRTUAL_W;

        int uiW = Math.round(guiScale * VIRTUAL_W);
        int uiH = Math.round(guiScale * VIRTUAL_H);
        int left = guiX, top = guiY, right = guiX + uiW, bottom = guiY + uiH;

        gg.fill(0, 0, sw, top, shade);
        gg.fill(0, top, left, bottom, shade);
        gg.fill(right, top, sw, bottom, shade);
        gg.fill(0, bottom, sw, sh, shade);
        RenderSystem.disableBlend();

        gg.pose().pushPose();
        gg.pose().translate(guiX, guiY, 0);
        gg.pose().scale(guiScale, guiScale, 1f);

        // экран/рамка
        drawScreenFrame(gg);

        // контент
        drawHeaderAndProgress(gg);
        drawBottomPanels(gg);
        drawButtons(gg);

        gg.pose().popPose();
    }

    @Override
    public void render(GuiGraphics gg, int mouseX, int mouseY, float partialTick) {
        super.render(gg, mouseX, mouseY, partialTick);
        this.renderTooltip(gg, mouseX, mouseY);
    }

    // ---------- ввод ----------
        @Override
    public boolean mouseClicked(double mx, double my, int button) {
        if (button == 0) {
            if (isHovering(btnImpExp, mx, my)) {
                if (this.minecraft != null && this.minecraft.gameMode != null) {
                    this.minecraft.gameMode.handleInventoryButtonClick(this.menu.containerId, PanelUpgradeMenu.BTN_IMPORT_EXPORT);
                }
                doLocalImportExport();
                playClick();
                return true;
            }
            if (isHovering(btnStart, mx, my)) {
                if (this.minecraft != null && this.minecraft.gameMode != null) {
                    this.minecraft.gameMode.handleInventoryButtonClick(this.menu.containerId, PanelUpgradeMenu.BTN_START);
                }
                doLocalStart();
                playClick();
                return true;
            }
            if (isHovering(btnStop, mx, my)) {
                if (this.minecraft != null && this.minecraft.gameMode != null) {
                    this.minecraft.gameMode.handleInventoryButtonClick(this.menu.containerId, PanelUpgradeMenu.BTN_STOP);
                }
                doLocalStop();
                playClick();
                return true;
            }
            if (isHovering(btnStub, mx, my)) {
                // плейсхолдер
                playClick();
                return true;
            }
        }
        return super.mouseClicked(mx, my, button);
    }

 private void playClick() {
        if (this.minecraft != null) {
            this.minecraft.getSoundManager().play(SimpleSoundInstance.forUI(SoundEvents.UI_BUTTON_CLICK, 1.0F));
        }
    }


    // ---------- рисование ----------
    private void drawScreenFrame(GuiGraphics gg) {
        int x = SCREEN_X, y = SCREEN_Y, w = SCREEN_W, h = SCREEN_H;
        gg.fill(x, y, x + w, y + h, 0xFF000000);  // чёрный фон «экрана»
        gg.renderOutline(x, y, w, h, LINE_WHITE);
        // горизонтальная линия под заголовком и прогресс‑баром
        gg.hLine(x, x + w, y + 64, LINE_WHITE);
        // вертикальная, делящая низ пополам
        gg.vLine(x + w / 2, y + 64, y + h, LINE_WHITE);
        // горизонтальная граница нижних зон
        gg.hLine(x, x + w, y + (h + 64) / 2, LINE_WHITE);
    }

    private void drawHeaderAndProgress(GuiGraphics gg) {
        TestUpgradeBlockEntity be = be();
        String name = "—";
        int lvl = 0;
        if (be != null && !be.getImportsView().isEmpty()) {
            var is = be.getImportsView().get(0);
            name = (is.diskName == null || is.diskName.isBlank()) ? "unnamed" : is.diskName;
            lvl  = Math.max(0, Math.min(3, is.level));
        }

        String title = name + "  [ " + lvl + " / 3 ]";
        int tx = SCREEN_X + 8;
        int ty = SCREEN_Y + 8;
        gg.drawString(this.font, title, tx, ty, TEXT_GREEN, false);

        // прогресс‑бар (подписан Progress: xx.xxx%)
        double p01 = (be != null) ? be.getProgress01() : 0.0;
        String pLabel = String.format(Locale.US, "Progress:  %.3f%%", p01 * 100.0);
        gg.drawString(this.font, pLabel, tx, ty + 14, TEXT_GREEN, false);

        int barX = SCREEN_X + 8;
        int barY = SCREEN_Y + 30;
        int barW = SCREEN_W - 16;
        int barH = 16;
        gg.fill(barX, barY, barX + barW, barY + barH, 0xFF202020);
        int fill = (int)Math.round(barW * p01);
        gg.fill(barX, barY, barX + Math.max(0, fill), barY + barH, TEXT_MAGENTA);
        gg.renderOutline(barX, barY, barW, barH, LINE_WHITE);
    }

    private void drawBottomPanels(GuiGraphics gg) {
        TestUpgradeBlockEntity be = be();

        // geo
        int x = SCREEN_X, y = SCREEN_Y + 64, w = SCREEN_W, h = SCREEN_H - 64;
        int midX = x + w / 2;
        int midY = y + h / 2;

        // ---- левая верхняя зона: метрики
        int pad = 8;
        int lx = x + pad, ly = y + pad;
        double p01 = (be != null) ? be.getProgress01() : 0.0;
        String sz = (be != null && !be.getImportsView().isEmpty())
                ? (be.getImportsView().get(0).size == null ? "" : be.getImportsView().get(0).size)
                : "";

        gg.drawString(this.font, "Progress:",            lx, ly,             TEXT_GREEN, false);
        gg.drawString(this.font, String.format(Locale.US, "  %.3f%%", p01*100.0), lx + 110, ly, TEXT_GREEN, false);

        gg.drawString(this.font, "Efficiency:",          lx, ly + 12,        TEXT_YELLOW, false);
        gg.drawString(this.font, String.format(Locale.US, "  %.3f B/s", calcEfficiencyBps(sz)), lx + 110, ly + 12, TEXT_YELLOW, false);

        gg.drawString(this.font, "Energy consumption:",  lx, ly + 24,        TEXT_CYAN, false);
        gg.drawString(this.font, "  100.0%",             lx + 170, ly + 24,  TEXT_CYAN, false);

        gg.drawString(this.font, "File size:",           lx, ly + 36,        LINE_WHITE, false);
        gg.drawString(this.font, String.format(Locale.US, "  %s", sz.isBlank() ? "—" : sz), lx + 110, ly + 36, LINE_WHITE, false);

        // ---- правая верхняя зона: название процесса
        int rx = midX + pad, ry = y + pad;
        gg.drawString(this.font, "Process:", rx, ry, TEXT_CYAN, false);
        gg.drawString(this.font, "  conversion", rx + 80, ry, TEXT_CYAN, false); // плейсхолдер

                // ---- правая нижняя зона: «расшифровка» — шум (только во время апгрейда)
        boolean activeNoise = (be != null && be.isUpgrading());
        drawDecoderNoise(gg, midX + 4, midY + 4, (x + w - 4) - (midX + 4), (y + h - 4) - (midY + 4), activeNoise);
    }


    private void drawButtons(GuiGraphics gg) {
        drawButton(gg, btnImpExp, "I/E");
        drawButton(gg, btnStart,  "START");
        drawButton(gg, btnStop,   "STOP");
        drawButton(gg, btnStub,   "###"); // placeholder
    }

    // ---------- действия (локальная мгновенная реакция) ----------
        private void doLocalImportExport() {
        TestUpgradeBlockEntity b = be();
        if (b == null) return;
        // та же логика, что на сервере
        b.importOrExportOne();
    }


    private void doLocalStart() { TestUpgradeBlockEntity b = be(); if (b != null) b.startUpgrade(); }
    private void doLocalStop()  { TestUpgradeBlockEntity b = be(); if (b != null) b.stopUpgrade(true); }

    // ---------- утилиты рисования ----------
    private void drawButton(GuiGraphics gg, IntRect r, String text) {
        gg.fill(r.x, r.y, r.x + r.w, r.y + r.h, 0xFF1A1A1A);
        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);
        int tw = this.font.width(text);
        gg.drawString(this.font, text, r.x + (r.w - tw)/2, r.y + (r.h - this.font.lineHeight)/2, 0xFFE0E0E0, false);
    }

    private boolean isHovering(IntRect r, double mouseX, double mouseY) {
        if (mouseX < guiX || mouseY < guiY || mouseX >= guiX + guiScale*VIRTUAL_W || mouseY >= guiY + guiScale*VIRTUAL_H) return false;
        double vx = (mouseX - guiX) / guiScale, vy = (mouseY - guiY) / guiScale;
        return r.contains((int)Math.floor(vx), (int)Math.floor(vy));
    }

        private void drawDecoderNoise(GuiGraphics gg, int x, int y, int w, int h, boolean active) {
        if (!active) return; // никакого шума, если апгрейд не идёт

        int pad = 6;
        int cols = Math.max(8, (w - pad * 2) / this.font.width("W"));
        int rows = Math.max(4, (h - pad * 2) / (this.font.lineHeight + 1));

        // 2 раза медленнее: обновление примерно каждые ~60–70 мс
        long t = System.nanoTime() / 60_000_000L;
        rand.setSeed(t);

        int yy = y + pad;
        for (int r = 0; r < rows; r++) {
            String line = makeCodeLikeLine(cols);
            gg.drawString(this.font, line, x + pad, yy, 0xFFB020E0, false);
            yy += this.font.lineHeight + 1;
        }
    }

        private String makeCodeLikeLine(int maxCols) {
        int kind = rand.nextInt(4);
        String base;
        switch (kind) {
            case 0 -> {
                // псевдо-метка
                base = String.format(Locale.ROOT, "L%04X: 0x%04X -> 0x%04X",
                        rand.nextInt(0xFFFF), rand.nextInt(0xFFFF), rand.nextInt(0xFFFF));
            }
            case 1 -> {
                // псевдо-if
                base = String.format(Locale.ROOT, "if (r%02d == 0x%02X) {",
                        rand.nextInt(32), rand.nextInt(256));
            }
            case 2 -> {
                // псевдо-присваивание
                base = String.format(Locale.ROOT, "buf[%02d] = '%c';",
                        rand.nextInt(64), (char) ('A' + rand.nextInt(26)));
            }
            default -> {
                // псевдо-лог
                base = String.format(Locale.ROOT, "LOG %02d:%02d:%02d >",
                        rand.nextInt(24), rand.nextInt(60), rand.nextInt(60));
            }
        }

        if (base.length() > maxCols) {
            return base.substring(0, Math.max(0, maxCols));
        }

        // добиваем строку случайными символами, чтобы ширина была ровной
        StringBuilder sb = new StringBuilder(base);
        while (sb.length() < maxCols) {
            int k = rand.nextInt(36);
            char ch = (k < 10) ? (char) ('0' + k) : (char) ('A' + (k - 10));
            sb.append(ch);
        }
        return sb.toString();
    }



    private double calcEfficiencyBps(String sizeLabel) {
        // Плейсхолдер: если на диске записан «0.7980 MB», то B/s = MB*1024*1024 / 15
        try {
            String s = sizeLabel.trim().toUpperCase(Locale.ROOT);
            if (s.endsWith("MB")) s = s.substring(0, s.length()-2).trim();
            double mb = Double.parseDouble(s.replace(',', '.'));
            return (mb * 1024.0 * 1024.0) / TestUpgradeBlockEntity.UPGRADE_SECONDS;
        } catch (Exception ignore) { return 0.0; }
    }

    private TestUpgradeBlockEntity be() {
        try {
            Object m = this.menu;
            net.minecraft.world.level.Level w = null;
            try { w = (net.minecraft.world.level.Level) m.getClass().getField("world").get(m); } catch (Throwable ignored) {}
            if (w == null) w = this.minecraft != null ? this.minecraft.level : null;

            int x = 0, y = 0, z = 0;
            try { x = (int) m.getClass().getField("x").get(m); } catch (Throwable ignored) {}
            try { y = (int) m.getClass().getField("y").get(m); } catch (Throwable ignored) {}
            try { z = (int) m.getClass().getField("z").get(m); } catch (Throwable ignored) {}

            if (w == null) return null;
            net.minecraft.core.BlockPos pos = new net.minecraft.core.BlockPos(x, y, z);
            net.minecraft.world.level.block.entity.BlockEntity raw = w.getBlockEntity(pos);
            return (raw instanceof TestUpgradeBlockEntity t) ? t : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    // простейший прямоугольник
    private static class IntRect {
        final int x, y, w, h;
        IntRect(int x, int y, int w, int h) { this.x = x; this.y = y; this.w = w; this.h = h; }
        boolean contains(int mx, int my) { return mx >= x && mx < x + w && my >= y && my < y + h; }
    }
}
