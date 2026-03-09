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
    // Высота полосы между горизонтальными рамками (имя / прогресс / Прогресс / Процесс)
    private static final int HEADER_STRIP_H = 25;

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
    // Буфер «кода» для правой панели: построчный плавный скролл
private final java.util.ArrayList<String> codeBuf = new java.util.ArrayList<>();
private int  codeBufWidthPx = -1;
private int  codeBufLines   = 0;
private long codeUpdateBucket = -1L; // шаг ~120 мс
// Тайпинг по одному символу + курсор
private final java.util.ArrayList<Integer> codeTyped = new java.util.ArrayList<>();
private long codeTypeBucket   = -1L;   // шаг добора символов ~35 мс
private long codeCursorBucket = -1L;   // мигание курсора ~400 мс
private boolean codeCursorOn  = false;
// --- флаги для сброса и фронтовой детекции старта ---
private boolean lastRunning   = false; // предыдущее состояние "идёт апгрейд"
private boolean codeJustReset = false; // требование: собрать буфер пустым
// первый кадр после открытия: не триггерим ресет, а просто синхронизируемся
private boolean runningEdgePrimed = false;
// сид «сессии кода», чтобы каждая сессия начиналась по-разному
private long codeSessionSeed = 0L;



// Полный сброс правой "консоли" (буфера и таймеров)
private void resetCodePanel() {
    codeBuf.clear();
    codeTyped.clear();
    codeUpdateBucket = -1L;
    codeTypeBucket   = -1L;
    codeCursorBucket = -1L;
    codeCursorOn     = false;
    // новый сид для новой «сессии» кода
codeSessionSeed = buildCodeSeed();

    // форсим пересбор буфера под текущую геометрию на следующем кадре
    codeBufWidthPx = -1;
    codeBufLines   = 0;

    // попросим собрать буфер «пустым» (все строки начинают печататься с 0)
    codeJustReset = true;
}




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
// Заголовок: отдельная рамка. Прогресс-бар: отдельная рамка такой же высоты,
// пришитая к нижней границе верхней панели (единый блок с нижней частью UI).
private void drawTopBar(GuiGraphics gg, IntRect r) {
    TestUpgradeBlockEntity be = be();

    String head;
    if (be != null && be.getSingleImport() != null) {
        var is = be.getSingleImport();
        int lvl = Math.max(0, Math.min(3, is.level));
        head = ((is.diskName != null && !is.diskName.isBlank()) ? is.diskName : "signal")
                + "  [lvl " + lvl + "/3]";
    } else {
        head = "[ЗАГРУЗИТЬ ДАННЫЕ]";
    }

    // Высота рамки заголовка и рамки прогресс-бара — одинаковая
    final int boxH      = HEADER_STRIP_H; // высота обводки и у заголовка, и у бара
    final int padSide   = 2;              // отступ слева/справа от края экрана
    // Подбираем верхний отступ так, чтобы:
    // 1) рамка заголовка = boxH
    // 2) зазор между рамками = boxH
    // 3) нижняя рамка прогресса высотой boxH касалась нижней границы r (TOP_H)
    final int padTop = Math.max(0, r.h - boxH * 3); // для TOP_H=66 и boxH=20 -> 6

    // --- РАМКА ЗАГОЛОВКА ---
    int headX = r.x + padSide;
    int headY = r.y + padTop;
    int headW = r.w - padSide * 2;
    int headH = boxH;

    gg.fill(headX, headY, headX + headW, headY + headH, 0xFF000000);
    gg.renderOutline(headX, headY, headW, headH, LINE_WHITE);

    int headTextY = headY + (headH - this.font.lineHeight) / 2;
    gg.drawString(this.font, head, headX + 6, headTextY, 0xFFFF4040, false);

    // --- РАМКА ПРОГРЕСС-БАРА ---
    int barX = r.x + padSide;
    int barH = boxH;
    int barY = r.y + r.h - barH; // низ рамки совпадает с SCREEN_Y + TOP_H
    int barW = headW;

    // фон рамки бара
    gg.fill(barX, barY, barX + barW, barY + barH, 0xFF000000);

    // рисуем рамку бара: верх+лево+право сами, низ отдаём глобальной линии TOP_H
    // (чтобы визуально быть единым с нижней панелью)
    gg.hLine(barX, barX + barW, barY, LINE_WHITE);                  // верхняя грань
    gg.vLine(barX, barY, barY + barH, LINE_WHITE);                  // левая грань
    gg.vLine(barX + barW, barY, barY + barH, LINE_WHITE);           // правая грань
    // нижнюю линию не рисуем — она уже есть из drawFrame() как граница TOP_H

    // --- ВНУТРЕННЯЯ ПОЛОСА ПРОГРЕССА ВНУТРИ РАМКИ ---
    final int padIn = 3;               // внутренние отступы внутри рамки
    int progH = barH - padIn * 2;      // реальная высота цветной полосы
    if (progH < 4) progH = 4;

    int progX = barX + padIn;
    int progY = barY + (barH - progH) / 2;
    int progW = barW - padIn * 2;

    gg.fill(progX, progY, progX + progW, progY + progH, 0xFF101010);

    float p = getProgress01(be);
    int filled = Math.max(0, Math.min(progW, Math.round(progW * p)));

    drawStripedFill(gg, progX, progY, filled, progH, 0xFFFF00FF);
    gg.renderOutline(progX, progY, progW, progH, 0xFF404040);
}




    // ==== Left bottom: табличка как на референсе ====
private void drawLeftInfo(GuiGraphics gg, IntRect r) {
    // внешняя рамка левой области
    gg.renderOutline(r.x, r.y, r.w, r.h, LINE_WHITE);

        final int padOuter   = 2;                         // отступ от внешней рамки
    final int headerRowH = HEADER_STRIP_H;            // полоска как у имени/прогресса
    final int rowH       = this.font.lineHeight + 4;  // высота строк таблицы


    // внутренняя область
    int innerX = r.x + padOuter;
    int innerY = r.y + padOuter;
    int innerW = r.w - padOuter * 2;
    int innerH = r.h - padOuter * 2;

    gg.fill(innerX, innerY, innerX + innerW, innerY + innerH, 0xFF000000);
    gg.renderOutline(innerX, innerY, innerW, innerH, LINE_WHITE);

    // горизонтальная линия между заголовком и таблицей
    int headerBottomY = innerY + headerRowH;
    gg.hLine(innerX, innerX + innerW, headerBottomY, LINE_WHITE);

    // ещё две горизонтальные линии для строк (как на макете)
    int bodyY0 = headerBottomY;
    int row1Y = bodyY0 + rowH;
    int row2Y = bodyY0 + rowH * 2;
    int row3Y = bodyY0 + rowH * 3;

    gg.hLine(innerX, innerX + innerW, row1Y, LINE_WHITE);
    gg.hLine(innerX, innerX + innerW, row2Y, LINE_WHITE);
    // нижняя граница таблицы совпадает с внутренней рамкой

    // вертикальная линия между колонкой текста и значений
    int colSplitX = innerX + Math.round(innerW * 0.60f);
    gg.vLine(colSplitX, bodyY0, innerY + innerH, LINE_WHITE);

    // --- данные ---
    TestUpgradeBlockEntity be = be();
    float p = getProgress01(be);
    boolean running = be != null && be.isUpgrading();

    String sProgVal = String.format(java.util.Locale.US, "%.3f%%", p * 100.0);

    double effBps = calcEfficiencyBps(be);
    String sEffVal = running
            ? String.format(java.util.Locale.US, "%.3f B/s", effBps)
            : "—";

    double ep = calcEnergyPct();
    String sPowVal = String.format(java.util.Locale.US, "%3.1f%%", ep);

    String rawSize = resolveFileSizeFromJson(be);
    String sSizeVal = prettySize(rawSize);

    int labelX = innerX + 6;
    int valueX = colSplitX + 6;

    // заголовок "Прогресс:" + значение справа
    int headTextY = innerY + (headerRowH - this.font.lineHeight) / 2;
    gg.drawString(this.font, "Прогресс:", labelX, headTextY, TEXT_GREEN, false);
    gg.drawString(this.font, sProgVal, valueX, headTextY, TEXT_GREEN, false);

    // строка 1: эффективность
    int rowTextY0 = bodyY0 + (rowH - this.font.lineHeight) / 2;
    gg.drawString(this.font, "эффективность", labelX, rowTextY0, TEXT_YEL, false);
    gg.drawString(this.font, sEffVal, valueX, rowTextY0, TEXT_YEL, false);

    // строка 2: потребление энергии
    int rowTextY1 = rowTextY0 + rowH;
    gg.drawString(this.font, "Потребление энергии", labelX, rowTextY1, TEXT_BLUE, false);
    gg.drawString(this.font, sPowVal, valueX, rowTextY1, TEXT_BLUE, false);

    // строка 3: размер файла
    int rowTextY2 = rowTextY1 + rowH;
    gg.drawString(this.font, "размер файла", labelX, rowTextY2, LINE_WHITE, false);
    gg.drawString(this.font, sSizeVal, valueX, rowTextY2, LINE_WHITE, false);
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


// ==== Right bottom (общая рамка с хедером и областью кода) ====
private void drawRightProcess(GuiGraphics gg, IntRect r) {
    // внешняя рамка правой области
    gg.renderOutline(r.x, r.y, r.w, r.h, LINE_WHITE);

        final int padOuter   = 2;
    final int headerRowH = HEADER_STRIP_H;   // та же высота полосы


    // внутренняя область
    int innerX = r.x + padOuter;
    int innerY = r.y + padOuter;
    int innerW = r.w - padOuter * 2;
    int innerH = r.h - padOuter * 2;

    gg.fill(innerX, innerY, innerX + innerW, innerY + innerH, 0xFF000000);
    gg.renderOutline(innerX, innerY, innerW, innerH, LINE_WHITE);

    // линия, отделяющая хедер от области псевдокода
    int headerBottomY = innerY + headerRowH;
    gg.hLine(innerX, innerX + innerW, headerBottomY, LINE_WHITE);

    TestUpgradeBlockEntity be = be();
    boolean running = (be != null) && be.isUpgrading();

    // фронт старта: сброс консоли только при переходе false -> true
    if (!runningEdgePrimed) {
        lastRunning = running;
        runningEdgePrimed = true;
    } else if (running && !lastRunning) {
        resetCodePanel();
    }
    lastRunning = running;

    // --- заголовок "Процесс: ожидание/конвертация" ---
    int headTextY = innerY + (headerRowH - this.font.lineHeight) / 2;
    gg.drawString(this.font, "Процесс:", innerX + 8, headTextY, LINE_CYAN, false);

    String status = running ? "конвертация" : "ожидание";
    int statusW = this.font.width(status);
    gg.drawString(this.font, status, innerX + innerW - statusW - 8, headTextY, TEXT_BLUE, false);

    // --- область псевдокода ---
    IntRect rBody = new IntRect(innerX, headerBottomY, innerW, innerH - headerRowH);
    gg.fill(rBody.x + 1, rBody.y + 1, rBody.x + rBody.w - 1, rBody.y + rBody.h - 1, 0xFF000000);
    gg.renderOutline(rBody.x, rBody.y, rBody.w, rBody.h, LINE_WHITE);

    int pad = 8;
    int x = rBody.x + pad;
    int y = rBody.y + 6;
    int w = rBody.w - pad * 2;
    int h = rBody.h - (y - rBody.y) - pad;

    if (running) {
        drawNoiseBlock(gg, x, y, w, h, TEXT_MAG, true);
    } else {
        // «замороженная» консоль
        drawNoiseBlock(gg, x, y, w, h, 0xFF606060, false);
    }
}



// Псевдокод с по-символьным тайпингом и мигающим курсором
private void drawNoiseBlock(GuiGraphics gg, int x, int y, int w, int h, int color, boolean running) {
    int lineH = this.font.lineHeight + 1;
    int lines = Math.max(1, h / lineH);

    // обновляем буфер (геометрия/скролл/тайпинг)
    updateCodeBuffer(w, lines, running);

    // рисуем строки
    for (int i = 0; i < lines; i++) {
        String full = (i < codeBuf.size()) ? codeBuf.get(i) : "";
        int typed = (i < codeTyped.size()) ? Math.min(codeTyped.get(i), full.length()) : 0;
        String shown = (typed <= 0) ? "" : full.substring(0, typed);

        // курсор на последней видимой строке
        if (i == lines - 1) {
            long blinkBucket = (System.nanoTime() / 1_000_000L) / 400L; // 400 мс
            if (blinkBucket != codeCursorBucket) {
                codeCursorBucket = blinkBucket;
                codeCursorOn = !codeCursorOn;
            }
            if (running && codeCursorOn) {
                // добавим тонкий курсор, не страшно, если чуть вылезет за ширину
                shown = shown + "▌";
            }
        }

        gg.drawString(this.font, shown, x, y + i * lineH, color, false);
    }
}


private void updateCodeBuffer(int maxWidthPx, int linesVisible, boolean running) {
    // геометрия изменилась — пересобираем
    if (maxWidthPx != codeBufWidthPx || linesVisible != codeBufLines) {
    codeBufWidthPx = maxWidthPx;
    codeBufLines   = linesVisible;

    codeBuf.clear();
    codeTyped.clear();

    Random seedRnd = new Random(codeSessionSeed != 0L ? codeSessionSeed : (codeSessionSeed = buildCodeSeed()));
    for (int i = 0; i < linesVisible; i++) {
        String line = randomCodeRow(seedRnd, maxWidthPx);
        codeBuf.add(line);
        if (codeJustReset) {
            // после сброса — ВСЕ строки печатаются с нуля (панель визуально пустая)
            codeTyped.add(0);
        } else {
            // обычное поведение при первой сборке/смене геометрии
            codeTyped.add(i < linesVisible - 1 ? line.length() : 0);
        }
    }
    codeUpdateBucket = -1L;
    codeTypeBucket   = -1L;

    // одноразовый флажок отрабатываем
    codeJustReset = false;
}


    if (codeBuf.isEmpty() || codeTyped.isEmpty()) return;

    // Тайпинг: по 1 символу ~каждые 35 мс на последней строке
    long typeBucket = (System.nanoTime() / 1_000_000L) / 35L; // 35 мс
    if (running && typeBucket != codeTypeBucket) {
        codeTypeBucket = typeBucket;
        int last = codeBuf.size() - 1;
        String lastLine = codeBuf.get(last);
        int typed = codeTyped.get(last);
        if (typed < lastLine.length()) {
            codeTyped.set(last, typed + 1);
        }
    }

    // Можно ли скроллить? — только когда последняя строка полностью напечатана
    boolean lastDone = false;
    {
        int last = codeBuf.size() - 1;
        lastDone = codeTyped.get(last) >= codeBuf.get(last).length();
    }

    // Плавный скролл ~120 мс, но только если есть завершённая нижняя строка
    long scrollBucket = (System.nanoTime() / 1_000_000L) / 120L; // 120 мс
    if (running && lastDone && scrollBucket != codeUpdateBucket) {
        codeUpdateBucket = scrollBucket;

        // удалить верхнюю строку
        if (!codeBuf.isEmpty())  codeBuf.remove(0);
        if (!codeTyped.isEmpty()) codeTyped.remove(0);

        // добавить новую нижнюю и сбросить её типинг
        String newLine = randomCodeRow(
        new Random((scrollBucket ^ 0xC0DEF00DL) ^ codeSessionSeed),
        maxWidthPx
);
        codeBuf.add(newLine);
        codeTyped.add(0); // новая строка будет печататься с нуля
    }
}


private String randomCodeRow(Random rnd, int maxPixelWidth) {
    final String[] KW_TYPES = {"int","float","double","long","bool","byte","var", "image", "sound", "degen"};
    final String[] KW_CTRL  = {"if","for","while","return","switch", "import", "ChatPGT", "Access", "Gemini", "Neuro", "if/else/if/else/if/else", "else", "midd", "VotV", "MrDrNose", "Monique", "TvOS", "play", "say", "genius", "if", "for", "while", "while{while{while{}}}", "forEach", "generate", "million", "clamp", "hit", "ler", "signal", "argem" };
    final String[] FNAMES   = {"hash","convert","process","update","step","mix","scan","encode","decode","flush", "anal", "doublepene", "lol", "small", "Kvass", "Tail", "Cat", "Duck", "idiot", "dnt_rd_ths", "votv", "kel", "listen", "kerfu", "meow", "us", "think", "rei", "bi*ch", ":)", "head", "rand", "pseudo", "cicle", "image", "raw", "kotakbass", "SoSaL", "Ko0tk", "deny"};
    final String[] OPS      = {"=","+=","-=","*=","^=","&=","|=","==","!=",">","<",">=","<=", "etc", "+<<++=", "(^-^)", "+-", "--", "of", "T-T", "()()()()", "(.)(.)", "cl", "rn", "dmp", "==", "+/-", "ss", "sas", "dsd", "sos", "al", "s", "+", "--", "==", "UwU", "ds", "rkn"};

    StringBuilder sb = new StringBuilder(96);

    // случайный отступ
    int indent = rnd.nextInt(4); // 0..3
    for (int i = 0; i < indent; i++) sb.append("  ");

    // иногда комментарий
    if (rnd.nextDouble() < 0.18) {
        sb.append("// ").append(randomIdent(rnd));
        if (rnd.nextBoolean()) sb.append(" ").append(randomIdent(rnd));
        return trimToWidth(sb.toString(), maxPixelWidth);
    }

    double roll = rnd.nextDouble();

    if (roll < 0.20) {
        // скобки блока
        sb.append(rnd.nextBoolean() ? "{" : "}");
        return trimToWidth(sb.toString(), maxPixelWidth);
    } else if (roll < 0.42) {
        // управляющая конструкция
        String kw = KW_CTRL[rnd.nextInt(KW_CTRL.length)];
        sb.append(kw).append(" (")
          .append(randomIdent(rnd)).append(" ")
          .append(OPS[rnd.nextInt(OPS.length)]).append(" ")
          .append(randomNumber(rnd))
          .append(") {");
        return trimToWidth(sb.toString(), maxPixelWidth);
    } else if (roll < 0.70) {
        // объявление/присваивание
        sb.append(KW_TYPES[rnd.nextInt(KW_TYPES.length)]).append(" ")
          .append(randomIdent(rnd)).append(" ")
          .append(OPS[rnd.nextInt(OPS.length)]).append(" ");
        if (rnd.nextDouble() < 0.25) {
            sb.append('"').append(randomString(rnd, 4 + rnd.nextInt(6))).append('"');
        } else if (rnd.nextDouble() < 0.25) {
            sb.append("0x").append(Integer.toHexString(rnd.nextInt()).toUpperCase(java.util.Locale.ROOT));
        } else {
            sb.append(randomNumber(rnd));
        }
        sb.append(";");
        return trimToWidth(sb.toString(), maxPixelWidth);
    } else {
        // вызов функции
        sb.append(FNAMES[rnd.nextInt(FNAMES.length)]).append("(");
        int argc = 1 + rnd.nextInt(3);
        for (int i = 0; i < argc; i++) {
            if (rnd.nextDouble() < 0.33) sb.append('"').append(randomString(rnd, 3 + rnd.nextInt(5))).append('"');
            else if (rnd.nextDouble() < 0.5) sb.append(randomNumber(rnd));
            else sb.append(randomIdent(rnd));
            if (i + 1 < argc) sb.append(", ");
        }
        sb.append(");");
        return trimToWidth(sb.toString(), maxPixelWidth);
    }
}


private String trimToWidth(String s, int maxPixelWidth) {
    if (this.font.width(s) <= maxPixelWidth - 4) return s;
    String ell = s;
    while (!ell.isEmpty() && this.font.width(ell) > maxPixelWidth - 4) {
        ell = ell.substring(0, ell.length() - 1);
    }
    return ell;
}

private String randomIdent(Random rnd) {
    String[] syll = {"al","be","co","da","en","fa","gi","ho","ix","jo","ka","lu","mi","no","or","pi","qu","ra","si","to","ux","va","wo","xi","ya","zo"};
    int parts = 2 + rnd.nextInt(3);
    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < parts; i++) sb.append(syll[rnd.nextInt(syll.length)]);
    // иногда camelCase
    if (sb.length() > 0) sb.setCharAt(0, Character.toLowerCase(sb.charAt(0)));
    if (rnd.nextDouble() < 0.25 && sb.length() > 2) sb.setCharAt(1, Character.toUpperCase(sb.charAt(1)));
    return sb.toString();
}

private String randomNumber(Random rnd) {
    if (rnd.nextDouble() < 0.35) return "0x" + Integer.toHexString(rnd.nextInt()).toUpperCase(java.util.Locale.ROOT);
    if (rnd.nextDouble() < 0.5)  return Integer.toString(rnd.nextInt(10_000));
    int a = rnd.nextInt(5000);
    int b = rnd.nextInt(1000); // 000..999
    return String.format(java.util.Locale.ROOT, "%d.%03d", a, b);
}

private String randomString(Random rnd, int len) {
    final char[] alpha = "abcdef0123456789_-./".toCharArray();
    StringBuilder sb = new StringBuilder(len);
    for (int i = 0; i < len; i++) sb.append(alpha[rnd.nextInt(alpha.length)]);
    return sb.toString();
}

private long buildCodeSeed() {
    long s = System.nanoTime();
    // привяжем к миру/времени/игроку/позиции блока, чтобы сид был «правдоподобный»
    if (this.minecraft != null) {
        if (this.minecraft.level != null) s ^= this.minecraft.level.getGameTime();
        if (this.minecraft.player != null) {
            var u = this.minecraft.player.getUUID();
            s ^= u.getMostSignificantBits() ^ u.getLeastSignificantBits();
        }
    }
    // координаты блока из меню
    s ^= (((long) x) << 32) ^ (((long) z) << 16) ^ (long) y;
    return s;
}

// --- ключ в guistate для конкретного блока ---
private String codeStateKey() {
    return "code_state@" + x + "," + y + "," + z;
}

// --- сохранить текущее состояние консоли в guistate ---
@SuppressWarnings("unchecked")
private void saveConsoleState() {
    try {
        java.util.HashMap<String, Object> m = new java.util.HashMap<>();
        m.put("buf", new java.util.ArrayList<>(codeBuf));      // ArrayList<String>
        m.put("typed", new java.util.ArrayList<>(codeTyped));  // ArrayList<Integer>
        m.put("width", codeBufWidthPx);
        m.put("lines", codeBufLines);
        m.put("seed", codeSessionSeed);
        m.put("running", lastRunning);
        long gt = (this.minecraft != null && this.minecraft.level != null) ? this.minecraft.level.getGameTime() : 0L;
        m.put("gt", gt);
        guistate.put(codeStateKey(), m);
    } catch (Throwable ignored) {}
}

// --- загрузить состояние консоли из guistate + «догнать» печать за время, пока GUI был закрыт ---
@SuppressWarnings("unchecked")
private void loadConsoleState() {
    try {
        Object o = guistate.get(codeStateKey());
        if (!(o instanceof java.util.Map)) return;
        java.util.Map<?, ?> m = (java.util.Map<?, ?>) o;

        Object bufObj   = m.get("buf");
        Object typedObj = m.get("typed");
        if (!(bufObj instanceof java.util.List) || !(typedObj instanceof java.util.List)) return;

        // восстановим буфер
        codeBuf.clear();
        codeTyped.clear();
        for (Object s : (java.util.List<?>) bufObj)   if (s instanceof String)  codeBuf.add((String) s);
        for (Object n : (java.util.List<?>) typedObj) if (n instanceof Number)  codeTyped.add(((Number) n).intValue());

        Object w = m.get("width");  if (w instanceof Number) codeBufWidthPx = ((Number) w).intValue();
        Object l = m.get("lines");  if (l instanceof Number) codeBufLines   = ((Number) l).intValue();
        Object sd= m.get("seed");   if (sd instanceof Number) codeSessionSeed = ((Number) sd).longValue();

        // таймеры перезапускаем (они завязаны на системные bucket'ы)
        codeUpdateBucket = -1L;
        codeTypeBucket   = -1L;
        codeCursorBucket = -1L;
        codeCursorOn     = false;

        long savedGT = 0L;
        Object gtObj = m.get("gt");
        if (gtObj instanceof Number) savedGT = ((Number) gtObj).longValue();

        // если апгрейд реально идёт — догоним печать за время, пока GUI был закрыт
        boolean actuallyRunning = (be() != null) && be().isUpgrading();
        long nowGT = (this.minecraft != null && this.minecraft.level != null) ? this.minecraft.level.getGameTime() : savedGT;
        long deltaMs = Math.max(0L, (nowGT - savedGT) * 50L);

        // чтобы не жечь CPU при огромных паузах — ограничим догонку, например, 60 сек
        deltaMs = Math.min(deltaMs, 60_000L);

        if (actuallyRunning && deltaMs > 0) {
            catchUpConsole(deltaMs);
        }
    } catch (Throwable ignored) {}
}

// --- симуляция «догонки» печати/скролла за deltaMs миллисекунд ---
private void catchUpConsole(long ms) {
    if (codeBufWidthPx <= 0 || codeBufLines <= 0) return;
    if (codeBuf.isEmpty() || codeTyped.isEmpty()) return;

    // гарантируем согласованность размеров
    while (codeTyped.size() < codeBuf.size()) codeTyped.add(0);
    while (codeTyped.size() > codeBuf.size()) codeTyped.remove(codeTyped.size()-1);

    // шаг печати — 35мс/символ, скролл — 120мс
    while (ms >= 35 && !codeBuf.isEmpty() && !codeTyped.isEmpty()) {
        int last = codeBuf.size() - 1;
        String lastLine = codeBuf.get(last);
        int typed = Math.min(codeTyped.get(last), lastLine.length());

        if (typed < lastLine.length()) {
            long canChars = Math.min((long)(lastLine.length() - typed), ms / 35L);
            if (canChars <= 0) break;
            codeTyped.set(last, typed + (int) canChars);
            ms -= canChars * 35L;
        } else {
            if (ms < 120) break;
            ms -= 120L;

            // скроллим, добавляем новую строку
            if (!codeBuf.isEmpty())  codeBuf.remove(0);
            if (!codeTyped.isEmpty()) codeTyped.remove(0);

            String newLine = randomCodeRow(
                    new java.util.Random((codeSessionSeed ^ (ms * 1103515245L))),
                    codeBufWidthPx
            );
            codeBuf.add(newLine);
            codeTyped.add(0);

            // держим окно фиксированного кол-ва строк
            while (codeBuf.size() > codeBufLines) {
                codeBuf.remove(0);
                if (!codeTyped.isEmpty()) codeTyped.remove(0);
            }
        }
    }
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
    resetCodePanel(); // сбросить вывод "кода" перед новым стартом
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
public void onClose() {
    saveConsoleState();
    super.onClose();
}

@Override
public void removed() {
    saveConsoleState();
    super.removed();
}


@Override
public void init() {
    super.init();

    // 1) попытаться восстановить консоль
    loadConsoleState();

    // 2) синхронизируемся с фактическим состоянием блока (без ресета на ре-энтри)
    TestUpgradeBlockEntity t = be();
    lastRunning = (t != null) && t.isUpgrading();
    runningEdgePrimed = false; // первый проход в drawRightProcess не ресетит
    codeJustReset = false;     // на ре-энтри не собираем буфер пустым
}



}
