package net.code.thisnotamod.client.gui;

import com.mojang.blaze3d.systems.RenderSystem;
import net.code.thisnotamod.world.inventory.DebugMenuMenu;
import net.code.thisnotamod.network.DebugMenuNetwork;
import net.code.thisnotamod.network.DebugMenuNetwork.C2SSetVarMessage;
import net.code.thisnotamod.network.DebugMenuNetwork.C2SRequestInit;
import net.code.thisnotamod.network.DebugMenuNetwork.S2CInitState;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.components.Button;
import net.minecraft.client.gui.components.EditBox;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.client.gui.components.Checkbox;
import org.lwjgl.glfw.GLFW;

import java.util.ArrayList;
import java.util.List;

public class DebugMenuScreen extends AbstractContainerScreen<DebugMenuMenu> {
    public static DebugMenuScreen INSTANCE; // чтобы можно было применить серверную инициализацию из пакета

    private static final ResourceLocation BACKGROUND = new ResourceLocation("thisnotamod", "textures/screens/debug_menu.png");

    // --- фон GUI ---
    private static final int BG_W = 220;   // ширина текстуры фона (px)
    private static final int BG_H = 200;   // высота текстуры фона (px)

    // --- чекбокс ---
    private static final int   CHECKBOX_BASE  = 20;    // базовый хитбокс чекбокса
    private static final float CHECKBOX_SCALE = 0.75f;  // визуальный масштаб (0.75 от BASE)

    private Button tabModifiers;
    private Button tabDebug;
    private int currentTab = 0; // 0 - modifiers, 1 - Debug

    private final List<Line> lines = new ArrayList<>();
    private int viewportTop;
    private int viewportBottom;
    private int labelX;
    private int fieldX;
    private int lineHeight = 20;
    private int contentHeight;
    private int scroll; // пиксели от начала контента
    private int maxScroll;

    private static final int FIELD_WIDTH = 40;
    private static final int CLIP_PAD = 3; // ранний «обрез» сверху/снизу в пикселях

    // Кэш последних значений с сервера
    private boolean cachedDebug, cachedWorldDebug, cachedTimeDisplay;
    private boolean cachedAlarm;
    private boolean cachedHeatSpecPurchased;

    // Signal Scanner
    private double cachedSignalScanerSpeedMod;
    private double cachedPingerCooldown;
    private double cachedPingerSpeed;
    private double cachedPingerSuccesChance;

    // Signal Download
    private double cachedDetectorSpeed;
    private double cachedDownloadSpeed;
    private double cachedPolarityFilterWidth;
    private double cachedFrequencyFilterWidth;

    private boolean hasCache = false;

    @Override
    protected void renderLabels(GuiGraphics gg, int mouseX, int mouseY) {
        // Не рисуем ни заголовок, ни метку "Инвентарь"
    }

private static class CheckBoxLine extends Line {
    private final String varKey;
    private final C2SSetVarMessage.Scope scope;
    private Checkbox checkbox;
    private boolean current = false;
    private boolean suppressSend = false;

    CheckBoxLine(String caption, String varKey, C2SSetVarMessage.Scope scope) {
        super(caption, 20);
        this.varKey = varKey;
        this.scope = scope;
    }

    @Override
    void attach(DebugMenuScreen s) {
        int visual = Math.round(DebugMenuScreen.CHECKBOX_BASE * DebugMenuScreen.CHECKBOX_SCALE);
        final int drawX = s.fieldX - (visual - FIELD_WIDTH); // привязка по ВИЗУАЛЬНОЙ ширине

        checkbox = new Checkbox(drawX, 0,
                DebugMenuScreen.CHECKBOX_BASE, DebugMenuScreen.CHECKBOX_BASE,
                Component.literal(""), current) {
            @Override
            public void onPress() {
                super.onPress();
                current = this.selected();
                if (!suppressSend) {
                    DebugMenuNetwork.sendToServer(
                        new C2SSetVarMessage(C2SSetVarMessage.Type.BOOL, scope, varKey, 0.0, current)
                    );
                }
            }

            @Override
            public void renderWidget(GuiGraphics gg, int mouseX, int mouseY, float partialTick) {
                // Масштаб вокруг центра 20x20 — ничего не режется
                var pose = gg.pose();
                float cx = this.getX() + DebugMenuScreen.CHECKBOX_BASE / 2f;
                float cy = this.getY() + DebugMenuScreen.CHECKBOX_BASE / 2f;
                pose.pushPose();
                pose.translate(cx, cy, 0);
                pose.scale(DebugMenuScreen.CHECKBOX_SCALE, DebugMenuScreen.CHECKBOX_SCALE, 1.0f);
                pose.translate(-cx, -cy, 0);
                super.renderWidget(gg, mouseX, mouseY, partialTick);
                pose.popPose();
            }
        };

        s.addRenderableWidget(checkbox);
    }

    @Override
    void detach(DebugMenuScreen s) { s.removeWidget(checkbox); }

    @Override
    void setY(int screenY) {  // <— важно: метод с параметром и с фигурными скобками
        int visual = Math.round(DebugMenuScreen.CHECKBOX_BASE * DebugMenuScreen.CHECKBOX_SCALE);
        checkbox.setY(screenY + (20 - visual) / 2);
    }

    @Override
    void setVisible(boolean v) { checkbox.visible = v; checkbox.active = v; }

    @Override
    void renderLabel(GuiGraphics g, DebugMenuScreen s, int labelX) {
        if (checkbox == null || !checkbox.visible) return;
        int y = checkbox.getY() + 4;
        if (y < s.viewportTop + CLIP_PAD || y > s.viewportBottom - CLIP_PAD - 10) return;
        g.drawString(s.font, Component.literal(name), labelX, y, 0x000000, false);
    }

    void setValueClient(boolean v) {
        current = v;
        if (checkbox != null && checkbox.selected() != v) {
            suppressSend = true;
            checkbox.onPress();
            suppressSend = false;
        }
    }
}


    // -------- СТРУКТУРЫ ЛИНИЙ --------
    private abstract static class Line {
        final String name;      // текст слева (отображаемый)
        final int height;       // высота линии (обычно 20)
        int y;                  // базовая Y позиция в контенте (без учёта скролла)

        Line(String name, int height) {
            this.name = name;
            this.height = height;
        }
        abstract void attach(DebugMenuScreen s);
        abstract void detach(DebugMenuScreen s);
        abstract void setY(int screenY);
        abstract void setVisible(boolean v);
        abstract void renderLabel(GuiGraphics g, DebugMenuScreen s, int labelX);
    }

    private static class NumberLine extends Line {
        private final String varKey; // имя переменной в MCreator
        private final C2SSetVarMessage.Scope scope;
        private EditBox field;

        NumberLine(String caption, String varKey, C2SSetVarMessage.Scope scope) {
            super(caption, 20);
            this.varKey = varKey;
            this.scope = scope;
        }
        @Override
        void attach(DebugMenuScreen s) {
            field = new EditBox(s.font, s.fieldX, 0, FIELD_WIDTH, 18, Component.literal(varKey)) {
                @Override
                public void setFocused(boolean focused) {
                    boolean was = this.isFocused();
                    super.setFocused(focused);
                    // белый при редактировании, серый когда не в фокусе
                    this.setTextColor(focused ? 0xFFFFFF : 0xC0C0C0);
                    if (was && !focused) {
                        NumberLine.this.submit(); // отправляем при потере фокуса
                    }
                }
            };
            field.setBordered(true);
            field.setTextColor(0xC0C0C0);
            field.setResponder(txt -> {
                // отправляем только если это валидное число
                if (txt != null && !txt.isEmpty() && isNumber(txt)) {
                    try {
                        double val = Double.parseDouble(txt);
                        DebugMenuNetwork.sendToServer(new C2SSetVarMessage(
                                C2SSetVarMessage.Type.NUMBER, scope, varKey, val, false
                        ));
                    } catch (Exception ignored) {}
                }
            });
            s.addRenderableWidget(field);
        }
        @Override
        void detach(DebugMenuScreen s) {
            s.removeWidget(field);
        }
        @Override
        void setY(int screenY) {
            field.setY(screenY + 1);
        }
        @Override
        void setVisible(boolean v) {
            field.visible = v;
            field.active = v;
        }
        @Override
        void renderLabel(GuiGraphics g, DebugMenuScreen s, int labelX) {
            if (field == null || !field.visible) return;
            int y = field.getY() + 4;
            if (y < s.viewportTop + CLIP_PAD || y > s.viewportBottom - CLIP_PAD - 10) return;
            g.drawString(s.font, Component.literal(name), labelX, y, 0x000000, false);
        }

        void setValueClient(double v) {
            if (field != null) {
                String txt = (Double.toString(v));
                if (!txt.equals(field.getValue())) field.setValue(txt);
            }
        }
        void submit() {
            if (field == null) return;
            String txt = field.getValue();
            // игнорируем пустые/промежуточные состояния
            if (txt == null || txt.isEmpty() || ".".equals(txt) || "-".equals(txt) || "+".equals(txt)
                    || "+.".equals(txt) || "-.".equals(txt))
                return;
            if (isNumber(txt)) {
                try {
                    double val = Double.parseDouble(txt);
                    DebugMenuNetwork.sendToServer(new C2SSetVarMessage(
                            C2SSetVarMessage.Type.NUMBER, scope, varKey, val, false
                    ));
                } catch (Exception ignored) {}
            }
        }

        private static boolean isNumber(String s) {
            // допускаем знаки, точку и экспоненту
            return s.matches("^[+-]?(\\d+\\.?\\d*|\\.\\d+)([eE][+-]?\\d+)?$");
        }
    }

    private static class SeparatorLine extends Line {
        private int drawY;
        private boolean visible = true;
        SeparatorLine() { super("", 8); }
        @Override void attach(DebugMenuScreen s) {}
        @Override void detach(DebugMenuScreen s) {}
        @Override void setY(int screenY) { this.drawY = screenY + 3; }
        @Override void setVisible(boolean v) { this.visible = v; }
        @Override
        void renderLabel(GuiGraphics g, DebugMenuScreen s, int labelX) {
            if (!visible) return;
            if (drawY < s.viewportTop + CLIP_PAD || drawY > s.viewportBottom - CLIP_PAD) return;
            int x1 = s.leftPos + 8;
            int x2 = s.leftPos + s.imageWidth - 8;
            g.fill(x1, drawY, x2, drawY + 1, 0xFF000000);
        }
    }

    private static class LabelLine extends Line {
        private boolean visible = true;
        LabelLine(String caption) { super(caption, 14); }
        @Override void attach(DebugMenuScreen s) {}
        @Override void detach(DebugMenuScreen s) {}
        @Override void setY(int screenY) {}
        @Override void setVisible(boolean v) { this.visible = v; }
        @Override
        void renderLabel(GuiGraphics g, DebugMenuScreen s, int labelX) {
            if (!visible) return;
            int drawY = s.viewportTop + 2 + (this.y - s.viewportTop) - s.scroll;
            if (drawY < s.viewportTop || drawY > s.viewportBottom - 10) return;
            g.drawString(s.font, Component.literal(name), labelX, drawY, 0x808080, false);
        }
    }

    private static class ActionLine extends Line {
        private final String action; // "break_all" | "repair_all" | "clear_list"
        private Button button;
        private boolean clicked = false;

        ActionLine(String caption, String action) {
            super(caption, 20);
            this.action = action;
        }

        @Override
        void attach(DebugMenuScreen s) {
            clicked = false; // на всякий случай при новом attach
            button = new TextOnlyButton(
    s.fieldX - (44 - FIELD_WIDTH), 0, 44, 18,
    Component.literal("run"),
    b -> {
        if (clicked) return;
        DebugMenuNetwork.sendToServer(new DebugMenuNetwork.C2SServersAction(action));
        clicked = true;
        button.active = false;
        button.setMessage(Component.literal("done"));
    },
    s
);


            s.addRenderableWidget(button); // добавить на экран
        }

        @Override void detach(DebugMenuScreen s) { s.removeWidget(button); }

        @Override void setY(int screenY) {
            if (button != null) button.setY(screenY + 1);
        }

        @Override
        void setVisible(boolean v) {
            if (button != null) {
                button.visible = v;
                button.active = v && !clicked; // активна только когда видна и ещё не нажата
            }
        }

        @Override
        void renderLabel(GuiGraphics g, DebugMenuScreen s, int labelX) {
            if (button == null || !button.visible) return;
            int y = button.getY() + 4;
            if (y < s.viewportTop + CLIP_PAD || y > s.viewportBottom - CLIP_PAD - 10) return;
            g.drawString(s.font, Component.literal(name), labelX, y, 0x000000, false);
        }
    }

    private static class ActionLineWeather extends Line {
        private final String action; // "weather_clear" | "weather_rain" | "weather_thunder"
        private Button button;
        private boolean clicked = false;

        ActionLineWeather(String caption, String action) {
            super(caption, 20);
            this.action = action;
        }

        @Override
        void attach(DebugMenuScreen s) {
            clicked = false;
            button = new TextOnlyButton(
    s.fieldX - (44 - FIELD_WIDTH), 0, 44, 18,
    Component.literal("run"),
    b -> {
        if (clicked) return;
        DebugMenuNetwork.sendToServer(new DebugMenuNetwork.C2SWeatherAction(action));
        clicked = true;
        button.active = false;
        button.setMessage(Component.literal("done"));
    },
    s
);


            s.addRenderableWidget(button);
        }

        @Override void detach(DebugMenuScreen s) { s.removeWidget(button); }

        @Override void setY(int screenY) {
            if (button != null) button.setY(screenY + 1);
        }

        @Override
        void setVisible(boolean v) {
            if (button != null) {
                button.visible = v;
                button.active = v && !clicked;
            }
        }

        @Override
        void renderLabel(GuiGraphics g, DebugMenuScreen s, int labelX) {
            if (button == null || !button.visible) return;
            int y = button.getY() + 4;
            if (y < s.viewportTop + CLIP_PAD || y > s.viewportBottom - CLIP_PAD - 10) return;
            g.drawString(s.font, Component.literal(name), labelX, y, 0x000000, false);
        }
    }


    private static class TabButton extends Button {
    private final DebugMenuScreen screen;
    private final java.util.function.Supplier<Boolean> isActive;

    TabButton(int x, int y, int w, int h, Component label,
              OnPress onPress, DebugMenuScreen screen,
              java.util.function.Supplier<Boolean> isActive) {
        super(x, y, w, h, label, onPress, DEFAULT_NARRATION);
        this.screen = screen;
        this.isActive = isActive;
    }

    @Override
    public void renderWidget(GuiGraphics g, int mouseX, int mouseY, float partialTick) {
        // Без текстуры — рисуем только текст
        boolean hover = this.isMouseOver(mouseX, mouseY);
        boolean active = isActive.get();

        Component msg = getMessage();
        int tw = screen.font.width(msg);
        int tx = getX() + (getWidth() - tw) / 2;
        int ty = getY() + (getHeight() - 8) / 2;

        // Подложка под текст при ховере: белый текст, сдвиг 1px влево-вниз
        if (hover) {
            g.drawString(screen.font, msg, tx - 1, ty + 1, 0xFF404040, false);
        }

        // Основной текст
        int color = active ? 0xFFE0E0E0 : 0xFF9E9E9E; // активная – светлее, пассивная – тёмно-серая
        g.drawString(screen.font, msg, tx, ty, color, false);
    }

	
    
}


private static class TextOnlyButton extends Button {
    private final DebugMenuScreen screen;

    TextOnlyButton(int x, int y, int w, int h, Component label,
                   OnPress onPress, DebugMenuScreen screen) {
        super(x, y, w, h, label, onPress, DEFAULT_NARRATION);
        this.screen = screen;
    }

    @Override
    public void renderWidget(GuiGraphics g, int mouseX, int mouseY, float partialTick) {
        // без текстуры: только текст, как у вкладок
        boolean hover = this.active && this.isMouseOver(mouseX, mouseY);

        Component msg = getMessage();
        int tw = screen.font.width(msg);
        int tx = getX() + (getWidth() - tw) / 2;
        int ty = getY() + (getHeight() - 8) / 2;

        if (hover) {
            g.drawString(screen.font, msg, tx - 1, ty + 1, 0xFF404040, false);
        }
        // активная — светлая, выключенная (после done) — более тёмная
        int color = this.active ? 0xFFE0E0E0 : 0xFF707070;
        g.drawString(screen.font, msg, tx, ty, color, false);
    }
}




    // ----------- Экран -----------
    public DebugMenuScreen(DebugMenuMenu container, Inventory inv, Component title) {
        super(container, inv, title);
        this.imageWidth = BG_W;
        this.imageHeight = BG_H;

    }

    @Override
    protected void init() {
        super.init();
        INSTANCE = this;

        // Геометрия
        this.leftPos = (this.width - this.imageWidth) / 2;
        this.topPos = (this.height - this.imageHeight) / 2;

        int tabsY = this.topPos + 6;
        int tabsX = this.leftPos + 6;
        int tabW = 100;
        int tabH = 20;

        // Вкладки (кнопки сверху)
        tabModifiers = new TabButton(
        tabsX, tabsY, tabW, tabH,
        Component.literal("Modifiers"),
        b -> setTab(0),
        this,
        () -> currentTab == 0
);
tabDebug = new TabButton(
        tabsX + tabW + 6, tabsY, tabW, tabH,
        Component.literal("Debug"),
        b -> setTab(1),
        this,
        () -> currentTab == 1
);


        addRenderableWidget(tabModifiers);
        addRenderableWidget(tabDebug);

        // Область контента под вкладками
        viewportTop = tabsY + tabH + 6;
        viewportBottom = this.topPos + this.imageHeight - 10;
        labelX = this.leftPos + 12;
        fieldX = this.leftPos + this.imageWidth - 12 - FIELD_WIDTH;

        buildTabContent();
        applyScroll(0);

        // Запрашиваем у сервера текущие значения
        DebugMenuNetwork.sendToServer(new C2SRequestInit());
    }

    private void buildTabContent() {
        // убираем старые виджеты/линии
        for (Line l : lines) l.detach(this);
        lines.clear();
        scroll = 0;

        if (currentTab == 0) {
            // ----- ВКЛАДКА "modifiers" -----

            // === Signal Scanner ===
            lines.add(new LabelLine("Signal Scanner"));
            lines.add(new NumberLine("Scanner_speed",     "SignalScanerSpeedMod", C2SSetVarMessage.Scope.PLAYER));
            lines.add(new NumberLine("Pinger_cooldown",   "PingerCooldown",       C2SSetVarMessage.Scope.PLAYER));
            lines.add(new NumberLine("Pinger_speed",      "PingerSpeed",          C2SSetVarMessage.Scope.PLAYER));
            lines.add(new NumberLine("Pinger_s_chance",   "pingerSuccesChance",   C2SSetVarMessage.Scope.PLAYER));

            lines.add(new SeparatorLine());

            // === Signal Download ===
            lines.add(new LabelLine("Signal Download"));
            lines.add(new NumberLine("Detector_speed",    "DetectorSpeed",        C2SSetVarMessage.Scope.PLAYER));
            lines.add(new NumberLine("Download_speed",    "downloadSpeed",        C2SSetVarMessage.Scope.PLAYER));
            lines.add(new NumberLine("Polar_filtr_width", "polarityFilterWidth",  C2SSetVarMessage.Scope.PLAYER));
            lines.add(new NumberLine("Freq_filtr_width",  "frequencyFilterWidth", C2SSetVarMessage.Scope.PLAYER));
            // === Signal Playback ===
            lines.add(new SeparatorLine());
            lines.add(new LabelLine("Signal Playback"));
            lines.add(new CheckBoxLine("Spectrogram_purchased", "heat_spec_purchased", C2SSetVarMessage.Scope.PLAYER));

        } else {
            // ----- ВКЛАДКА "Debug" -----
            lines.add(new LabelLine("Debug"));
            lines.add(new CheckBoxLine("debug (player)", "debug", C2SSetVarMessage.Scope.PLAYER));
lines.add(new CheckBoxLine("worldDebug (global-map)", "worldDebug", C2SSetVarMessage.Scope.MAP));
lines.add(new CheckBoxLine("TimeDisplay (player)", "TimeDisplay", C2SSetVarMessage.Scope.PLAYER));
lines.add(new CheckBoxLine("Alarm", "Alarm", C2SSetVarMessage.Scope.MAP));
            lines.add(new SeparatorLine());

            lines.add(new LabelLine("Servers"));
            lines.add(new ActionLine("break_all", "break_all"));
            lines.add(new ActionLine("repair_all", "repair_all"));
            lines.add(new ActionLine("clear_list", "clear_list"));

            lines.add(new SeparatorLine());

            lines.add(new LabelLine("Weather"));
            lines.add(new ActionLineWeather("weather_clear", "weather_clear"));
            lines.add(new ActionLineWeather("weather_rain", "weather_rain"));
            lines.add(new ActionLineWeather("weather_thunder", "weather_thunder"));
        }

        // Привязка виджетов и первичная раскладка
        int y = viewportTop + 2;
        for (Line l : lines) {
            l.attach(this);
            l.y = y;
            y += l.height;
        }

        // применяем кэш, чтобы значения не терялись при смене вкладок
        if (hasCache) {
            for (Line l : lines) {
                if (l instanceof NumberLine nl) {
                    // Signal Scanner
                    if ("SignalScanerSpeedMod".equals(nl.varKey)) nl.setValueClient(cachedSignalScanerSpeedMod);
                    if ("PingerCooldown".equals(nl.varKey))       nl.setValueClient(cachedPingerCooldown);
                    if ("PingerSpeed".equals(nl.varKey))          nl.setValueClient(cachedPingerSpeed);
                    if ("pingerSuccesChance".equals(nl.varKey))   nl.setValueClient(cachedPingerSuccesChance);
                    // Signal Download
                    if ("DetectorSpeed".equals(nl.varKey))        nl.setValueClient(cachedDetectorSpeed);
                    if ("downloadSpeed".equals(nl.varKey))        nl.setValueClient(cachedDownloadSpeed);
                    if ("polarityFilterWidth".equals(nl.varKey))  nl.setValueClient(cachedPolarityFilterWidth);
                    if ("frequencyFilterWidth".equals(nl.varKey)) nl.setValueClient(cachedFrequencyFilterWidth);
                } else if (l instanceof CheckBoxLine cl) {
    if ("debug".equals(cl.varKey))               cl.setValueClient(cachedDebug);
    if ("worldDebug".equals(cl.varKey))          cl.setValueClient(cachedWorldDebug);
    if ("TimeDisplay".equals(cl.varKey))         cl.setValueClient(cachedTimeDisplay);
    if ("Alarm".equals(cl.varKey))               cl.setValueClient(cachedAlarm);
    if ("heat_spec_purchased".equals(cl.varKey)) cl.setValueClient(cachedHeatSpecPurchased);
}

            }
        }

        contentHeight = y - viewportTop;
int visibleHeight = (viewportBottom - viewportTop) - 2 * CLIP_PAD; // учитываем паддинг клипа
final int EXTRA_SCROLL = 10; // позволяем докрутить ещё на 2px
maxScroll = Math.max(0, contentHeight - visibleHeight + EXTRA_SCROLL);
        repositionLines();
    }

    private void setTab(int idx) {
        if (this.currentTab != idx) {
            this.currentTab = idx;
            buildTabContent();
            DebugMenuNetwork.sendToServer(new C2SRequestInit());
        }
    }

    private void repositionLines() {
        final int top = viewportTop + CLIP_PAD;
final int bottom = viewportBottom - CLIP_PAD;

for (Line l : lines) {
    int screenY = l.y - scroll;

    boolean fully   = (screenY >= top) && (screenY + l.height <= bottom);
    boolean partial = (screenY + l.height > top) && (screenY < bottom);

    boolean visible = (l instanceof LabelLine || l instanceof SeparatorLine) ? partial : fully;

    l.setVisible(visible);
    if (visible) l.setY(screenY);
}
    }


    private void applyScroll(int delta) {
        scroll = Math.max(0, Math.min(scroll + delta, maxScroll));
        repositionLines();
    }

    @Override
    public boolean mouseScrolled(double mouseX, double mouseY, double delta) {
        // стандартный скролл: 10 пикселей за шаг
        if (mouseY >= viewportTop && mouseY <= viewportBottom && mouseX >= leftPos && mouseX <= leftPos + imageWidth) {
            applyScroll((int) (-delta * 10));
            return true;
        }
        return super.mouseScrolled(mouseX, mouseY, delta);
    }

    @Override
    public boolean keyPressed(int keyCode, int scanCode, int modifiers) {
        if (keyCode == GLFW.GLFW_KEY_ENTER || keyCode == GLFW.GLFW_KEY_KP_ENTER) {
            for (Line l : lines) {
                if (l instanceof NumberLine nl) {
                    if (nl.field != null && nl.field.isFocused()) {
                        nl.submit();
                        return true;
                    }
                }
            }
        }
        return super.keyPressed(keyCode, scanCode, modifiers);
    }

    @Override
    protected void renderBg(GuiGraphics g, float partialTick, int mouseX, int mouseY) {
        // Фон: рисуем только PNG с альфой, без прямоугольной заливки
RenderSystem.enableBlend();
RenderSystem.defaultBlendFunc();
RenderSystem.setShaderColor(1f, 1f, 1f, 1f);
try {
    g.blit(BACKGROUND, this.leftPos, this.topPos, 0, 0, BG_W, BG_H, BG_W, BG_H);
} catch (Exception ignored) {}
RenderSystem.disableBlend();

        // Рамка области контента
        g.fill(this.leftPos + 8, viewportTop - 2, this.leftPos + this.imageWidth - 8, viewportTop - 1, 0xFF000000);

        // Подписи к строкам (чёрным текстом)
        for (Line l : lines) {
            l.renderLabel(g, this, labelX);
        }
    }

    @Override
    public void render(GuiGraphics g, int mouseX, int mouseY, float partialTick) {
        this.renderBackground(g);
        super.render(g, mouseX, mouseY, partialTick);
        this.renderTooltip(g, mouseX, mouseY);
    }

    // Вызывается из S2CInitState handler — применить значения на клиенте
    public void applyInitState(S2CInitState s) {
        // --- обновляем кэш ---
        this.cachedSignalScanerSpeedMod = s.signalScanerSpeedMod;
        this.cachedPingerCooldown      = s.pingerCooldown;
        this.cachedPingerSpeed         = s.pingerSpeed;
        this.cachedPingerSuccesChance  = s.pingerSuccesChance;

        this.cachedDetectorSpeed       = s.detectorSpeed;
        this.cachedDownloadSpeed       = s.downloadSpeed;
        this.cachedPolarityFilterWidth = s.polarityFilterWidth;
        this.cachedFrequencyFilterWidth= s.frequencyFilterWidth;
        this.cachedHeatSpecPurchased = s.heatSpecPurchased;


        this.cachedDebug        = s.debug;
        this.cachedWorldDebug   = s.worldDebug;
        this.cachedTimeDisplay  = s.timeDisplay;
        this.cachedAlarm        = s.alarm;
        this.hasCache = true;

        // --- применяем к текущим виджетам ---
        for (Line line : lines) {
            if (line instanceof NumberLine nl) {
                boolean focused = (nl.field != null && nl.field.isFocused());
                if (!focused) {
                    // Signal Scanner
                    if ("SignalScanerSpeedMod".equals(nl.varKey)) nl.setValueClient(s.signalScanerSpeedMod);
                    if ("PingerCooldown".equals(nl.varKey))       nl.setValueClient(s.pingerCooldown);
                    if ("PingerSpeed".equals(nl.varKey))          nl.setValueClient(s.pingerSpeed);
                    if ("pingerSuccesChance".equals(nl.varKey))   nl.setValueClient(s.pingerSuccesChance);
                    // Signal Download
                    if ("DetectorSpeed".equals(nl.varKey))        nl.setValueClient(s.detectorSpeed);
                    if ("downloadSpeed".equals(nl.varKey))        nl.setValueClient(s.downloadSpeed);
                    if ("polarityFilterWidth".equals(nl.varKey))  nl.setValueClient(s.polarityFilterWidth);
                    if ("frequencyFilterWidth".equals(nl.varKey)) nl.setValueClient(s.frequencyFilterWidth);
                }
            }  else if (line instanceof CheckBoxLine cl) {
    if ("debug".equals(cl.varKey))               cl.setValueClient(s.debug);
    if ("worldDebug".equals(cl.varKey))          cl.setValueClient(s.worldDebug);
    if ("TimeDisplay".equals(cl.varKey))         cl.setValueClient(s.timeDisplay);
    if ("Alarm".equals(cl.varKey))               cl.setValueClient(s.alarm);
    if ("heat_spec_purchased".equals(cl.varKey)) cl.setValueClient(s.heatSpecPurchased);
}

        }
    }
}
