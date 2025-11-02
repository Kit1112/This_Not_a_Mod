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
import net.minecraft.client.gui.components.CycleButton;
import net.minecraft.client.gui.components.EditBox;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.player.Inventory;
import org.lwjgl.glfw.GLFW;


import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public class DebugMenuScreen extends AbstractContainerScreen<DebugMenuMenu> {
    public static DebugMenuScreen INSTANCE; // чтобы можно было применить серверную инициализацию из пакета

    private static final ResourceLocation BACKGROUND = new ResourceLocation("thisnotamod", "textures/screens/debug_menu.png");

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

    private static final int FIELD_WIDTH = 32; 

    // Кэш последних значений с сервера
private boolean cachedDebug, cachedWorldDebug, cachedTimeDisplay;
private double cachedDetectorSpeed, cachedDownloadSpeed, cachedPingerCooldown;
private boolean hasCache = false;


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
            g.drawString(s.font, Component.literal(name), labelX, field.getY() + 4, 0x000000, false);
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

    private static class BoolLine extends Line {
    private final String varKey;
    private final C2SSetVarMessage.Scope scope;
    private Button toggle;
    private boolean current = false;

    BoolLine(String caption, String varKey, C2SSetVarMessage.Scope scope) {
        super(caption, 20);
        this.varKey = varKey;
        this.scope = scope;
    }
    @Override
    void attach(DebugMenuScreen s) {
        toggle = Button.builder(Component.literal(current ? "Вкл" : "Выкл"), b -> {
                    current = !current;
                    toggle.setMessage(Component.literal(current ? "Вкл" : "Выкл"));
                    DebugMenuNetwork.sendToServer(
                            new C2SSetVarMessage(C2SSetVarMessage.Type.BOOL, scope, varKey, 0.0, current)
                    );
                })
                .bounds(s.fieldX - (44 - FIELD_WIDTH), 0, 44, 18)
                .build();
        s.addRenderableWidget(toggle);
    }
    @Override
    void detach(DebugMenuScreen s) { s.removeWidget(toggle); }
    @Override
    void setY(int screenY) { toggle.setY(screenY + 1); }
    @Override
    void setVisible(boolean v) { toggle.visible = v; toggle.active = v; }
    @Override
    void renderLabel(GuiGraphics g, DebugMenuScreen s, int labelX) {
        g.drawString(s.font, Component.literal(name), labelX, toggle.getY() + 4, 0x000000, false);
    }
    void setValueClient(boolean v) {
        current = v;
        if (toggle != null) toggle.setMessage(Component.literal(current ? "Вкл" : "Выкл"));
    }
}


    // ----------- Экран -----------
    public DebugMenuScreen(DebugMenuMenu container, Inventory inv, Component title) {
        super(container, inv, title);
        this.imageWidth = DebugMenuMenu.GUI_WIDTH;
        this.imageHeight = 200; // немного пространства; контент скроллится
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
        tabModifiers = Button.builder(Component.literal("modifiers"), b -> setTab(0))
                .bounds(tabsX, tabsY, tabW, tabH).build();
        tabDebug = Button.builder(Component.literal("Debug"), b -> setTab(1))
                .bounds(tabsX + tabW + 6, tabsY, tabW, tabH).build();
        addRenderableWidget(tabModifiers);
        addRenderableWidget(tabDebug);

        // Область контента под вкладками
        viewportTop = tabsY + tabH + 6;
        viewportBottom = this.topPos + this.imageHeight - 10;
        labelX = this.leftPos + 12;
        fieldX = this.leftPos + this.imageWidth - 12 - FIELD_WIDTH;

        buildTabContent();
        applyScroll(0);

        // Запрашиваем у сервера текущие значения (на случай отсутствия клиентской синхронизации MapVariables)
        DebugMenuNetwork.sendToServer(new C2SRequestInit());
    }

    private void buildTabContent() {
        // убираем старые виджеты/линии
        for (Line l : lines) l.detach(this);
        lines.clear();
        scroll = 0;

        if (currentTab == 0) {
            // ----- ВКЛАДКА "modifiers": три player‑persistence числа -----
            // [ADD] MODIFIERS LINES: новые числовые строки добавлять здесь по аналогии
            lines.add(new NumberLine("DetectorSpeed", "DetectorSpeed", C2SSetVarMessage.Scope.PLAYER));
            lines.add(new NumberLine("downloadSpeed", "downloadSpeed", C2SSetVarMessage.Scope.PLAYER));
            lines.add(new NumberLine("PingerCooldown", "PingerCooldown", C2SSetVarMessage.Scope.PLAYER));
            // ----- /MODIFIERS -----
        } else {
            // ----- ВКЛАДКА "Debug": debug (player bool), worldDebug (map bool), TimeDisplay (player bool)
            // [ADD] DEBUG LINES: новые булевые строки добавлять здесь по аналогии
            lines.add(new BoolLine("debug (player)", "debug", C2SSetVarMessage.Scope.PLAYER));
            lines.add(new BoolLine("worldDebug (global-map)", "worldDebug", C2SSetVarMessage.Scope.MAP));
            lines.add(new BoolLine("TimeDisplay (player)", "TimeDisplay", C2SSetVarMessage.Scope.PLAYER));
            // ----- /DEBUG -----
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
            if ("DetectorSpeed".equals(nl.varKey)) nl.setValueClient(cachedDetectorSpeed);
            if ("downloadSpeed".equals(nl.varKey)) nl.setValueClient(cachedDownloadSpeed);
            if ("PingerCooldown".equals(nl.varKey)) nl.setValueClient(cachedPingerCooldown);
        } else if (l instanceof BoolLine bl) {
            if ("debug".equals(bl.varKey)) bl.setValueClient(cachedDebug);
            if ("worldDebug".equals(bl.varKey)) bl.setValueClient(cachedWorldDebug);
            if ("TimeDisplay".equals(bl.varKey)) bl.setValueClient(cachedTimeDisplay);
        }
    }
}

        contentHeight = y - viewportTop;
        maxScroll = Math.max(0, contentHeight - (viewportBottom - viewportTop));
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
        int top = viewportTop;
        int bottom = viewportBottom;

        for (Line l : lines) {
            int screenY = l.y - scroll;
            boolean visible = screenY + l.height > top && screenY < bottom;
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
        // Фон: сначала подложка-заливка, затем — текстура (если есть)
        g.fillGradient(this.leftPos, this.topPos, this.leftPos + this.imageWidth, this.topPos + this.imageHeight,
                0xC0101010, 0xD0101010);
        RenderSystem.enableBlend();
        try {
            g.blit(BACKGROUND, this.leftPos, this.topPos, 0, 0, this.imageWidth, this.imageHeight);
        } catch (Exception ignored) {
            // если текстуры нет, остаёмся на заливке
        }
        RenderSystem.disableBlend();

        // Рамка области контента
        g.fill(this.leftPos + 8, viewportTop - 2, this.leftPos + this.imageWidth - 8, viewportTop - 1, 0xFF000000);
        g.fill(this.leftPos + 8, viewportBottom + 1, this.leftPos + this.imageWidth - 8, viewportBottom + 2, 0xFF000000);

        // Подписи к строкам (чёрным текстом)
        for (Line l : lines) {
            // видимость уже учтена в repositionLines (setVisible)
            l.renderLabel(g, this, labelX);
        }

        // Полоса прокрутки (простая)
        if (maxScroll > 0) {
            int barX = this.leftPos + this.imageWidth - 6;
            int barTop = viewportTop;
            int barBottom = viewportBottom;
            g.fill(barX, barTop, barX + 2, barBottom, 0x55000000);
            int track = barBottom - barTop;
            int knobH = Math.max(12, (int) (track * (1.0 * (track) / (contentHeight))));
            int knobY = barTop + (int) ((track - knobH) * (scroll / (double) maxScroll));
            g.fill(barX, knobY, barX + 2, knobY + knobH, 0xFF777777);
        }
    }

    @Override
    public void render(GuiGraphics g, int mouseX, int mouseY, float partialTick) {
        this.renderBackground(g);
        super.render(g, mouseX, mouseY, partialTick);
        g.drawString(this.font, this.title, this.leftPos + 10, this.topPos + 4, 0x000000, false);
        this.renderTooltip(g, mouseX, mouseY);
    }

    @Override
    public void onClose() {
        INSTANCE = null;
        super.onClose();
    }

    // Вызывается из S2CInitState handler — применить значения на клиенте
    public void applyInitState(S2CInitState s) {
    	// обновляем кэш
this.cachedDetectorSpeed = s.detectorSpeed;
this.cachedDownloadSpeed = s.downloadSpeed;
this.cachedPingerCooldown = s.pingerCooldown;
this.cachedDebug = s.debug;
this.cachedWorldDebug = s.worldDebug;
this.cachedTimeDisplay = s.timeDisplay;
this.hasCache = true;

        Consumer<Line> applier = line -> {
            if (line instanceof NumberLine nl) {
    boolean focused = nl.field != null && nl.field.isFocused();
    if (!focused) {
        if ("DetectorSpeed".equals(nl.varKey)) nl.setValueClient(s.detectorSpeed);
        if ("downloadSpeed".equals(nl.varKey)) nl.setValueClient(s.downloadSpeed);
        if ("PingerCooldown".equals(nl.varKey)) nl.setValueClient(s.pingerCooldown);
    }
} else if (line instanceof BoolLine bl) {
    if ("debug".equals(bl.varKey)) bl.setValueClient(s.debug);
    if ("TimeDisplay".equals(bl.varKey)) bl.setValueClient(s.timeDisplay);
    if ("worldDebug".equals(bl.varKey)) bl.setValueClient(s.worldDebug);
}
        };
        for (Line l : lines) applier.accept(l);
    }
}
