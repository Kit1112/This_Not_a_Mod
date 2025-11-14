package net.code.thisnotamod.client.gui;

import com.mojang.blaze3d.systems.RenderSystem;

import net.code.thisnotamod.world.inventory.PanelUpgradeMenu;
import net.code.thisnotamod.block.entity.TestUpgradeBlockEntity;

import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.player.Inventory;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import net.code.thisnotamod.network.ThisnotamodModVariables;



import java.util.HashMap;
import java.util.Random;

/**
 * Экран апгрейда сигнала.
 * Геометрия и вписывание 16:9 перенесены из PanelPlayback: виртуальное 640x360,
 * та же чёрная «экранная» область, инкрусты и кнопочная панель снизу.
 */
public class PanelUpgradeScreen extends AbstractContainerScreen<PanelUpgradeMenu> {

    public static final int VIRTUAL_W = 640;
    public static final int VIRTUAL_H = 360;

    private static final int INSET_LEFT   = 12;
    private static final int INSET_RIGHT  = 12;
    private static final int INSET_TOP    = 12;
    private static final int INSET_BOTTOM = 84;

    private static final int SCREEN_X = INSET_LEFT;
    private static final int SCREEN_Y = INSET_TOP;
    private static final int SCREEN_W = VIRTUAL_W - INSET_LEFT - INSET_RIGHT;
    private static final int SCREEN_H = VIRTUAL_H - INSET_TOP - INSET_BOTTOM;

    // Верхняя панель (заголовок + прогресс)
    private static final int TOP_H = 66; 

    // Цвета
    private static final int LINE_WHITE = 0xFFFFFFFF;
    private static final int LINE_CYAN  = 0xFF00FFEA;
    private static final int TEXT_GREEN = 0xFF00FF00;
    private static final int TEXT_YEL   = 0xFFFFD700;
    private static final int TEXT_BLUE  = 0xFF40C0FF;
    private static final int TEXT_MAG   = 0xFFFF40FF;

    // ---- Рендер‑скейл в окне ----
    private int guiX, guiY;
    private float guiScale;

    private static final HashMap<String, Object> guistate = PanelUpgradeMenu.guistate;

    private final int x, y, z;

private static final boolean DBG_SPEED = false;


    public PanelUpgradeScreen(PanelUpgradeMenu container, Inventory inv, Component title) {
        super(container, inv, title);
        this.x = container.x;
        this.y = container.y;
        this.z = container.z;
        this.imageWidth = VIRTUAL_W;
        this.imageHeight = VIRTUAL_H;
    }

    @Override public boolean isPauseScreen() { return false; }

    // ---- Кнопки внизу (как зоны) ----
    private static class IntRect {
        final int x, y, w, h;
        IntRect(int x, int y, int w, int h) { this.x=x; this.y=y; this.w=w; this.h=h; }
        boolean contains(int mx, int my) { return mx >= x && mx < x + w && my >= y && my < y + h; }
        int centerX() { return x + w/2; }
        int centerY() { return y + h/2; }
    }

    private static final int BTN_BAR_Y = SCREEN_Y + SCREEN_H + 20;
    private final IntRect btnImpExp  = new IntRect(SCREEN_X + 10,  BTN_BAR_Y, 24, 24); // I/E
    private final IntRect btnStart   = new IntRect(SCREEN_X + 46,  BTN_BAR_Y, 48, 24); // START
    private final IntRect btnStop    = new IntRect(SCREEN_X + 100, BTN_BAR_Y, 48, 24); // STOP
    private final IntRect btnStub    = new IntRect(SCREEN_X + 154, BTN_BAR_Y, 32, 24); // STUB

    // ---- Ресурсы (фон можно оставить пустым) ----
    private static final ResourceLocation texture = new ResourceLocation("thisnotamod:textures/screens/panel_upgrade.png");

    // id -> size из /data/thisnotamod/signals.json
private static final Map<Integer, String> SIZE_BY_ID = new java.util.HashMap<>();
private static boolean sizesLoaded = false;

private static void ensureSizesLoaded() {
    if (sizesLoaded) return;
    try (InputStream in = PanelUpgradeScreen.class.getResourceAsStream("/data/thisnotamod/signals.json")) {
        if (in != null) {
            JsonArray arr = JsonParser.parseReader(new InputStreamReader(in, StandardCharsets.UTF_8)).getAsJsonArray();
            for (JsonElement el : arr) {
                if (!el.isJsonObject()) continue;
                JsonObject o = el.getAsJsonObject();
                int id = o.has("id") && !o.get("id").isJsonNull() ? o.get("id").getAsInt() : -1;
                String size = o.has("size") && !o.get("size").isJsonNull() ? o.get("size").getAsString() : "";
                if (id >= 0) SIZE_BY_ID.put(id, size == null ? "" : size);
            }
        }
    } catch (Exception ignored) { }
    sizesLoaded = true;
}

private String resolveFileSizeFromJson(TestUpgradeBlockEntity be) {
    ensureSizesLoaded();
    if (be == null || be.getSingleImport() == null) return "—";
    int id = be.getSingleImport().signalId;
    String s = SIZE_BY_ID.getOrDefault(id, "");
    if (s != null && !s.isBlank()) return s;
    // фолбек: что пришло с диска
    String disk = be.getSingleImport().size;
    return (disk == null || disk.isBlank()) ? "—" : disk;
}


    @Override
    public void render(GuiGraphics gg, int mouseX, int mouseY, float partialTicks) {
        this.renderBackground(gg);
        super.render(gg, mouseX, mouseY, partialTicks);
        this.renderTooltip(gg, mouseX, mouseY);
    }

    @Override
    protected void renderBg(GuiGraphics gg, float partialTick, int mouseX, int mouseY) {
        // затемняем мир и вписываем 16:9 (как в PanelPlayback)
        RenderSystem.enableBlend();
        final int shade = 0xA0000000;
        int screenW = this.width;
        int screenH = this.height;

        float targetW = screenW;
        float targetH = screenW * (9f / 16f);
        if (targetH > screenH) { targetH = screenH; targetW = screenH * (16f / 9f); }

        guiX = Math.round((screenW - targetW) / 2f);
        guiY = Math.round((screenH - targetH) / 2f);
        guiScale = targetW / (float) VIRTUAL_W;

        int uiW = Math.round(guiScale * VIRTUAL_W);
        int uiH = Math.round(guiScale * VIRTUAL_H);
        int left = guiX, top = guiY, right = guiX + uiW, bottom = guiY + uiH;

        gg.fill(0, 0, screenW, top, shade);
        gg.fill(0, top, left, bottom, shade);
        gg.fill(right, top, screenW, bottom, shade);
        gg.fill(0, bottom, screenW, screenH, shade);
        RenderSystem.disableBlend();

        gg.pose().pushPose();
        gg.pose().translate(guiX, guiY, 0);
        gg.pose().scale(guiScale, guiScale, 1f);

        drawFrame(gg);

        // Прямоугольники областей
        IntRect rTop = new IntRect(SCREEN_X, SCREEN_Y, SCREEN_W, TOP_H);
        int restH = SCREEN_H - TOP_H;
        IntRect rLeft  = new IntRect(SCREEN_X, SCREEN_Y + TOP_H, SCREEN_W/2, restH);
        IntRect rRight = new IntRect(SCREEN_X + SCREEN_W/2, SCREEN_Y + TOP_H, SCREEN_W - SCREEN_W/2, restH);

        drawTopBar(gg, rTop);
        drawLeftInfo(gg, rLeft);
        drawRightProcess(gg, rRight);

        // Кнопки снизу
        drawButton(gg, btnImpExp,  "I/E", 0xFFE0E0E0);
        drawButton(gg, btnStart,   "START", 0xFFE0FFE0);
        drawButton(gg, btnStop,    "STOP", 0xFFFFE0E0);
        drawButton(gg, btnStub,    "STUB", 0xFFE0E0E0);

        gg.pose().popPose();
    }

    private void drawFrame(GuiGraphics gg) {
        // «экран»
        gg.fill(SCREEN_X, SCREEN_Y, SCREEN_X + SCREEN_W, SCREEN_Y + SCREEN_H, 0xFF000000);
        gg.renderOutline(SCREEN_X, SCREEN_Y, SCREEN_W, SCREEN_H, LINE_WHITE);
        // горизонтальная линия отделяющая верхнюю панель
        gg.hLine(SCREEN_X, SCREEN_X + SCREEN_W, SCREEN_Y + TOP_H, LINE_WHITE);
        // вертикальная линия делящая низ пополам
        gg.vLine(SCREEN_X + SCREEN_W/2, SCREEN_Y + TOP_H, SCREEN_Y + SCREEN_H, LINE_WHITE);
    }

    // --- полосатая заливка прогресса (w x h) заданным цветом ---
private void drawStripedFill(GuiGraphics gg, int x, int y, int w, int h, int color) {
    final int stripe = 6; // ширина «полоски»
    final int gap    = 3; // зазор между полосками
    for (int i = 0; i < w; i += (stripe + gap)) {
        int segW = Math.min(stripe, w - i);
        if (segW > 0) gg.fill(x + i, y, x + i + segW, y + h, color);
    }
}


    // ==== Top ====
// ==== Top (заголовок + отдельная рамка прогресса) ====
private void drawTopBar(GuiGraphics gg, IntRect r) {
    TestUpgradeBlockEntity be = be();

    String head;
    String size = "";
    if (be != null && be.getSingleImport() != null) {
        var is = be.getSingleImport();
        int lvl = Math.max(0, Math.min(3, is.level));
        head = ((is.diskName != null && !is.diskName.isBlank()) ? is.diskName : "signal") + "  [lvl " + lvl + "]";
        size = is.size == null ? "" : is.size;
    } else {
        head = "no signal";
    }

    // внутренняя рамка заголовка
    final int m = 2;               // внутренний отступ от общей области
    final int headerH = 20;        // высота рамки заголовка
    final int gap = 4;             // зазор между рамкой заголовка и рамкой прогресса

    IntRect rHeader = new IntRect(r.x + m, r.y + m, r.w - m*2, headerH);
    gg.fill(rHeader.x, rHeader.y, rHeader.x + rHeader.w, rHeader.y + rHeader.h, 0xFF000000);
    gg.renderOutline(rHeader.x, rHeader.y, rHeader.w, rHeader.h, LINE_WHITE);

    gg.drawString(this.font, head, rHeader.x + 6, rHeader.y + 6, TEXT_GREEN, false);
    if (!size.isEmpty()) {
        String sz = "size: " + size;
        int tw = this.font.width(sz);
        gg.drawString(this.font, sz, rHeader.x + rHeader.w - tw - 6, rHeader.y + 6, 0xFFB0B0B0, false);
    }

    // отдельная рамка прогресса
    final int barH   = 18;             // в 1.5 раза толще (было 12)
    final int padIn  = 3;              // внутренний паддинг внутри рамки прогресса
    final int boxH   = barH + padIn*2; // высота «коробки» с баром

    IntRect rProgBox = new IntRect(r.x + m, rHeader.y + rHeader.h + gap, r.w - m*2, boxH);
    gg.fill(rProgBox.x, rProgBox.y, rProgBox.x + rProgBox.w, rProgBox.y + rProgBox.h, 0xFF000000);
    gg.renderOutline(rProgBox.x, rProgBox.y, rProgBox.w, rProgBox.h, LINE_WHITE);

    // сам бар внутри коробки
    int barX = rProgBox.x + padIn;
    int barY = rProgBox.y + (rProgBox.h - barH) / 2;
    int barW = rProgBox.w - padIn*2;

    gg.fill(barX, barY, barX + barW, barY + barH, 0xFF101010);

    float p = getProgress01(be);
    int filled = Math.max(0, Math.min(barW, Math.round(barW * p)));

    // «полосочки» вместо сплошной заливки
    drawStripedFill(gg, barX, barY, filled, barH, 0xFFFF00FF);

    gg.renderOutline(barX, barY, barW, barH, 0xFF404040);
}



    // ==== Left bottom ====
private void drawLeftInfo(GuiGraphics gg, IntRect r) {
    // фон общей области
    gg.fill(r.x + 1, r.y + 1, r.x + r.w - 1, r.y + r.h - 1, 0xFF000000);

    final int m = 2;          // внутренний отступ
    final int headerH = 18;   // высота верхней рамки заголовка
    final int gap = 3;        // зазор между рамками

    // рамка заголовка секции
    IntRect rHdr = new IntRect(r.x + m, r.y + m, r.w - m*2, headerH);
    gg.fill(rHdr.x, rHdr.y, rHdr.x + rHdr.w, rHdr.y + rHdr.h, 0xFF000000);
    gg.renderOutline(rHdr.x, rHdr.y, rHdr.w, rHdr.h, LINE_WHITE);
    gg.drawString(this.font, "Progress:", rHdr.x + 8, rHdr.y + 5, LINE_CYAN, false);

    // рамка-коробка под контент
    IntRect rBody = new IntRect(r.x + m, rHdr.y + rHdr.h + gap, r.w - m*2, r.h - (headerH + gap + m*2));
    gg.fill(rBody.x + 1, rBody.y + 1, rBody.x + rBody.w - 1, rBody.y + rBody.h - 1, 0xFF000000);
    gg.renderOutline(rBody.x, rBody.y, rBody.w, rBody.h, LINE_WHITE);

    // контент
    TestUpgradeBlockEntity be = be();
    float p = getProgress01(be);
    boolean running = be != null && be.isUpgrading();

    String sProg = String.format(java.util.Locale.US, "Progress:  %.3f%%", p * 100.0);
    String sEff  = running
            ? String.format(java.util.Locale.US, "Efficiency:  %.3f kB/s", (calcEfficiencyBps(be) / 1024.0))
            : "Efficiency:  —";

    double ep    = calcEnergyPct();
    String sPow  = String.format(java.util.Locale.US, "Energy consumption:  %3.1f%%", ep);

    String rawSize = resolveFileSizeFromJson(be);
    String sSize   = "File size:  " + prettySize(rawSize);

    int x = rBody.x + 8;
    int y = rBody.y + 6;
    gg.drawString(this.font, sProg, x, y, TEXT_GREEN, false); y += this.font.lineHeight + 3;
    gg.drawString(this.font, sEff,  x, y, TEXT_YEL,   false); y += this.font.lineHeight + 3;
    gg.drawString(this.font, sPow,  x, y, TEXT_BLUE,  false); y += this.font.lineHeight + 3;
    gg.drawString(this.font, sSize, x, y, LINE_WHITE, false);

    // внешняя рамка всей левой области
    gg.renderOutline(r.x, r.y, r.w, r.h, LINE_WHITE);
}


// Читаем PLAYER_PERSISTENT → upgrade_speed (kB/s) с фолбэками, как в меню
private static double getUpgradeSpeedKbpsLocal() {
    Minecraft mc = Minecraft.getInstance();
    if (mc == null || mc.player == null) return 1.0;
    var root = mc.player.getPersistentData();

    if (root.contains("upgrade_speed")) {
        double v = root.getDouble("upgrade_speed");
        if (Double.isFinite(v) && v > 0.0) return v;
    }

    String[] containers = new String[]{
            "player_persistence",
            "player_persistance",
            "thisnotamod_player_persistence",
            "thisnotamod_player_persistance",
            "PlayerPersisted"
    };
    for (String c : containers) {
        if (root.contains(c)) {
            var t = root.getCompound(c);
            if (t.contains("upgrade_speed")) {
                double v = t.getDouble("upgrade_speed");
                if (Double.isFinite(v) && v > 0.0) return v;
            }
        }
    }

    double cap = mc.player
            .getCapability(net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
            .map(vars -> vars.upgrade_speed)
            .orElse(Double.NaN);
    if (Double.isFinite(cap) && cap > 0.0) return cap;

    return 1.0;
}




// Эффективность во время апгрейда: считаем от размера из JSON (то же, что рисуется),
// затем добавляем небольшой шум каждый тик.
private double calcEfficiencyBps(TestUpgradeBlockEntity be) {
    if (be == null || !be.isUpgrading()) return 0.0;

    double kbps = getUpgradeSpeedKbpsLocal(); // <-- читаем из NBT
    if (!Double.isFinite(kbps) || kbps <= 0.0) kbps = 1.0;

    long tBucket = (System.nanoTime() / 1_000_000L);
    java.util.Random r = new java.util.Random(0x7B1D_F00DL ^ tBucket);
    double jitter = 1.0 + (r.nextDouble() * 0.14 - 0.07); // −7..+7%
    double pepper = (r.nextDouble() - 0.5) * 0.02;        // ±2%
    double scale  = Math.max(0.0, jitter + pepper);

    return kbps * 1024.0 * scale; // в B/s
}





private static double parseSizeMB(String s) {
    if (s == null || s.isBlank()) return -1.0;
    String lo = s.trim().toLowerCase(java.util.Locale.ROOT);
    String num = lo.replaceAll("[^0-9.,]", "");
    if (num.isBlank()) return -1.0;
    num = num.replace(',', '.');
    double v;
    try { v = Double.parseDouble(num); } catch (Exception e) { return -1.0; }
    if (lo.contains("kb")) return v / 1024.0;
    if (lo.contains("kib")) return v / 1024.0;
    if (lo.contains("mb") || lo.contains("mib")) return v;
    if (lo.endsWith("b")) return v / (1024.0 * 1024.0);
    return v;
}

private String prettySize(String raw) {
    if (raw == null || raw.isBlank()) return "—";
    String lo = raw.toLowerCase(java.util.Locale.ROOT);
    // если уже есть буквы (единицы измерения), оставляем как есть
    if (lo.matches(".*[a-z].*")) return raw;
    // иначе считаем, что это мегабайты
    return raw + " MB";
}


/** Колебания энергии 98.0..100.0%**/
private double calcEnergyPct() {
    // новые значения примерно 20 раз в секунду, скачки в диапазоне 98..100
    long bucket = (System.nanoTime() / 1_000_000L) / 50L; // 50 мс
    java.util.Random r = new java.util.Random(0x5EED_C0FFEEL ^ bucket);
    return 98.0 + r.nextDouble() * 2.0; // 98.0 .. 100.0
}





private double calcEfficiency(TestUpgradeBlockEntity be) {
    if (be == null || !be.isUpgrading()) return 0.0;
    double kbps = getUpgradeSpeedKbpsLocal();
    if (!Double.isFinite(kbps) || kbps <= 0.0) kbps = 1.0;

    long tms = System.nanoTime() / 1_000_000L;
    java.util.Random r = new java.util.Random(tms);
    double jitter = 1.0 + (r.nextDouble() * 0.10 - 0.05); // −5..+5%

    return kbps * jitter; // kB/s
}


// ==== Right bottom (с хедером в рамке) ====
private void drawRightProcess(GuiGraphics gg, IntRect r) {
    gg.fill(r.x + 1, r.y + 1, r.x + r.w - 1, r.y + r.h - 1, 0xFF000000);

    final int m = 2;
    final int headerH = 18;
    final int gap = 3;

    // рамка заголовка секции
    IntRect rHdr = new IntRect(r.x + m, r.y + m, r.w - m*2, headerH);
    gg.fill(rHdr.x, rHdr.y, rHdr.x + rHdr.w, rHdr.y + rHdr.h, 0xFF000000);
    gg.renderOutline(rHdr.x, rHdr.y, rHdr.w, rHdr.h, LINE_WHITE);
    gg.drawString(this.font, "Process:",  rHdr.x + 8,  rHdr.y + 5, LINE_WHITE, false);
    gg.drawString(this.font, "conversion",rHdr.x + 92, rHdr.y + 5, TEXT_GREEN, false);

    // рамка-коробка под «код»
    IntRect rBody = new IntRect(r.x + m, rHdr.y + rHdr.h + gap, r.w - m*2, r.h - (headerH + gap + m*2));
    gg.fill(rBody.x + 1, rBody.y + 1, rBody.x + rBody.w - 1, rBody.y + rBody.h - 1, 0xFF000000);
    gg.renderOutline(rBody.x, rBody.y, rBody.w, rBody.h, LINE_WHITE);

    boolean running = (be() != null) && be().isUpgrading();

    int pad = 8;
    int x = rBody.x + pad;
    int y = rBody.y + 6;
    int w = rBody.w - pad*2;
    int h = rBody.h - (y - rBody.y) - pad;

    if (running) {
        drawNoiseBlock(gg, x, y, w, h, TEXT_MAG);
    } else {
        gg.drawString(this.font, "— idle —", x, y, 0xFF808080, false);
    }

    // внешняя рамка всей правой области
    gg.renderOutline(r.x, r.y, r.w, r.h, LINE_WHITE);
}


    private void drawNoiseBlock(GuiGraphics gg, int x, int y, int w, int h, int color) {
        // Псевдомоновый «код»: меняется кадр за кадром, пока идёт апгрейд
        int lineH = this.font.lineHeight + 1;
        int lines = Math.max(1, h / lineH);
        int maxWidth = w;

        long seed = System.nanoTime() / 1_000_000L; // «тикающий» сид
        Random rnd = new Random(seed);

        for (int i = 0; i < lines; i++) {
            String row = randomRow(rnd, maxWidth);
            gg.drawString(this.font, row, x, y + i * lineH, color, false);
        }
    }

    private String randomRow(Random rnd, int maxPixelWidth) {
        final char[] alphabet = "0123456789ABCDEFabcdef[]{}()<>=+-*/%$#@!?:;|\\^~".toCharArray();
        StringBuilder sb = new StringBuilder(128);
        // набираем до ширины
        while (true) {
            char c = alphabet[rnd.nextInt(alphabet.length)];
            sb.append(c);
            int px = this.font.width(sb.toString());
            if (px > maxPixelWidth - 8) break;
        }
        return sb.toString();
    }

    // ==== Ввод ====
@Override
public boolean mouseClicked(double mouseX, double mouseY, int button) {
    if (button == 0 && this.minecraft != null && this.minecraft.gameMode != null) {
        if (isHovering(btnImpExp, mouseX, mouseY)) {
            this.minecraft.gameMode.handleInventoryButtonClick(this.menu.containerId, 1);
            return true;
        }
        if (isHovering(btnStart, mouseX, mouseY)) {
            this.minecraft.gameMode.handleInventoryButtonClick(this.menu.containerId, 2);
            return true;
        }
        if (isHovering(btnStop, mouseX, mouseY)) {
            this.minecraft.gameMode.handleInventoryButtonClick(this.menu.containerId, 3);
            return true;
        }
        if (isHovering(btnStub, mouseX, mouseY)) {
            return true; // плейсхолдер
        }
    }
    return super.mouseClicked(mouseX, mouseY, button);
}


    // ==== Утилиты ====
    private boolean isHovering(IntRect r, double mouseX, double mouseY) {
    // Переводим экранные координаты в координаты нашей 640x360-плоскости
    // без дополнительного глобального отсечения — иначе на некоторых масштабах
    // нижняя панель может «выпасть» из проверки.
    double vx = (mouseX - guiX) / Math.max(1e-6f, guiScale);
    double vy = (mouseY - guiY) / Math.max(1e-6f, guiScale);
    return r.contains((int)Math.floor(vx), (int)Math.floor(vy));
}


    private void drawButton(GuiGraphics gg, IntRect r, String text, int color) {
        gg.fill(r.x, r.y, r.x + r.w, r.y + r.h, 0xFF1A1A1A);
        gg.renderOutline(r.x, r.y, r.w, r.h, 0xFF404040);
        int tw = this.font.width(text);
        gg.drawString(this.font, text, r.x + (r.w - tw)/2, r.y + (r.h - this.font.lineHeight)/2, color, false);
    }

    private float getProgress01(TestUpgradeBlockEntity be) {
        if (be == null || !be.isUpgrading()) return 0f;
        long now = (this.minecraft != null && this.minecraft.level != null) ? this.minecraft.level.getGameTime() : 0L;
        long start = be.getUpgradeStartGameTime();
        int total = be.getUpgradeTotalTicks();
        float t = (total <= 0) ? 0f : (now - start) / (float) total;
        if (t < 0f) t = 0f; if (t > 1f) t = 1f;
        return t;
    }

    // Получить наш BE по координатам из меню (аналогично PanelPlaybackScreen.be())
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

    @Override
    protected void renderLabels(GuiGraphics gg, int mouseX, int mouseY) {
        // без заголовка инвентаря
    }

    @Override
    public boolean keyPressed(int key, int b, int c) {
        if (key == 256) { // ESC
            if (this.minecraft != null && this.minecraft.player != null)
                this.minecraft.player.closeContainer();
            return true;
        }
        return super.keyPressed(key, b, c);
    }

@Override
public void init() {
    super.init();
}

}
