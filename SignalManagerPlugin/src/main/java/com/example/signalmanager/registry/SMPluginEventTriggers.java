package com.example.signalmanager.registry;

import net.mcreator.ui.MCreator;

import javax.swing.*;
import java.awt.*;

public final class SMPluginEventTriggers {

    public static SMPluginActions ACTIONS;

    /** ВСТАВКА пункта меню «Сигналы» сразу ПОСЛЕ «Справка»/«Help» */
    public static void modifyMenuBarAfterHelp(MCreator mc) {
        JMenuBar bar = mc.getMainMenuBar();
        if (bar == null) {
            System.out.println("[SignalManager] MenuBar is null");
            return;
        }

        // Не дублируем, если уже есть
        if (findByName(bar, "sm_menu_signals") != null) {
            System.out.println("[SignalManager] Signals menu already installed");
            return;
        }

        JMenu signalsMenu = new JMenu("Сигналы");
		signalsMenu.setIcon(iconOrNull("/icons/icon.png")); // иконка 16x16 из resources
		signalsMenu.setIconTextGap(6);                      // небольшой отступ между иконкой и текстом (по желанию)
        signalsMenu.setName("sm_menu_signals");

        // Пункты
        JMenuItem miCreate = new JMenuItem("✚ Новый сигнал", iconOrNull("/icons/signal_add.png"));
        miCreate.addActionListener(e -> ACTIONS.performCreate());

        JMenuItem miEdit = new JMenuItem("✎ Редактировать таблицу", iconOrNull("/icons/signal_edit.png"));
        miEdit.addActionListener(e -> ACTIONS.performEdit());

        signalsMenu.add(miCreate);
        signalsMenu.add(miEdit);

        // Найти индекс «Справка»/«Help» и вставить следом
        int helpIdx = findMenuIndexByText(bar, "Справка", "Help");
        if (helpIdx >= 0) {
            bar.add(signalsMenu, helpIdx + 1);
        } else {
            // если вдруг не нашли — добавим в конец
            bar.add(signalsMenu);
        }

        bar.revalidate();
        bar.repaint();
        mc.revalidate();
        mc.repaint();

        System.out.println("[SignalManager] Signals menu inserted after Help");
    }

    /** Резерв: старое добавление в «Инструменты → Signals» (на случай если понадобится) */
    public static void modifyMenus(MCreator mc) {
        JMenuBar bar = mc.getMainMenuBar();
        if (bar == null) return;

        JMenu tools = findMenuByText(bar, "Инструменты", "Tools");

        JMenuItem miCreate = new JMenuItem("Создать сигнал");
        miCreate.addActionListener(e -> ACTIONS.performCreate());

        JMenuItem miEdit = new JMenuItem("Редактировать таблицу сигналов");
        miEdit.addActionListener(e -> ACTIONS.performEdit());

        if (tools != null) {
            JMenu signalsSub = new JMenu("Signals");
            signalsSub.add(miCreate);
            signalsSub.add(miEdit);
            tools.addSeparator();
            tools.add(signalsSub);
        } else {
            JMenu signalsTop = new JMenu("Signals");
            signalsTop.add(miCreate);
            signalsTop.add(miEdit);
            bar.add(signalsTop);
        }

        bar.revalidate();
        bar.repaint();
        mc.revalidate();
        mc.repaint();
    }

    // ---------- helpers ----------

    private static Icon iconOrNull(String path) {
        try {
            var url = SMPluginEventTriggers.class.getResource(path);
            return (url != null) ? new ImageIcon(url) : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static Component findByName(Container parent, String name) {
        for (Component c : parent.getComponents()) {
            if (name.equals(c.getName())) return c;
        }
        return null;
    }

    private static int findMenuIndexByText(JMenuBar bar, String... names) {
        // 1) точное совпадение
        for (int i = 0; i < bar.getMenuCount(); i++) {
            JMenu m = bar.getMenu(i);
            if (m == null) continue;
            String txt = m.getText();
            if (txt == null) continue;
            for (String n : names)
                if (txt.trim().equalsIgnoreCase(n)) return i;
        }
        // 2) эвристика
        for (int i = 0; i < bar.getMenuCount(); i++) {
            JMenu m = bar.getMenu(i);
            if (m == null) continue;
            String txt = String.valueOf(m.getText()).toLowerCase();
            if (txt.contains("справ") || txt.contains("help")) return i;
        }
        return -1;
    }

    private static JMenu findMenuByText(JMenuBar bar, String... names) {
        for (int i = 0; i < bar.getMenuCount(); i++) {
            JMenu m = bar.getMenu(i);
            if (m == null) continue;
            String txt = m.getText();
            if (txt == null) continue;
            for (String n : names) {
                if (txt.trim().equalsIgnoreCase(n)) return m;
            }
        }
        return null;
    }

    private SMPluginEventTriggers() {}
}
