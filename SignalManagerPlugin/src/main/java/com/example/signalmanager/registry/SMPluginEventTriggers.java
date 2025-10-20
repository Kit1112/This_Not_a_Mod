package com.example.signalmanager.registry;

import net.mcreator.ui.MCreator;

import javax.swing.*;

public final class SMPluginEventTriggers {

    public static SMPluginActions ACTIONS;

    public static void modifyMenus(MCreator mc) {
        System.out.println("[SignalManager] modifyMenus start");

        JMenuBar bar = mc.getMainMenuBar();
        if (bar == null) {
            System.out.println("[SignalManager] MenuBar is null");
            return;
        }

        JMenu tools = findMenuByText(bar, "Инструменты", "Tools");

        JMenuItem miCreate = new JMenuItem("Создать сигнал");
        miCreate.addActionListener(e -> {
            System.out.println("[SignalManager] menu click: create");
            ACTIONS.performCreate();
        });

        JMenuItem miEdit = new JMenuItem("Редактировать таблицу сигналов");
        miEdit.addActionListener(e -> {
            System.out.println("[SignalManager] menu click: edit");
            ACTIONS.performEdit();
        });

        if (tools != null) {
            System.out.println("[SignalManager] Found Tools menu: " + tools.getText());
            JMenu signalsSub = new JMenu("Signals");
            signalsSub.add(miCreate);
            signalsSub.add(miEdit);
            tools.addSeparator();
            tools.add(signalsSub);
        } else {
            System.out.println("[SignalManager] Tools menu NOT found, appending top-level Signals");
            JMenu signalsTop = new JMenu("Signals");
            signalsTop.add(miCreate);
            signalsTop.add(miEdit);
            bar.add(signalsTop);
        }

        bar.revalidate();
        bar.repaint();
        mc.revalidate();
        mc.repaint();

        System.out.println("[SignalManager] modifyMenus done");
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
        for (int i = 0; i < bar.getMenuCount(); i++) {
            JMenu m = bar.getMenu(i);
            if (m == null) continue;
            String txt = m.getText();
            if (txt == null) continue;
            String low = txt.toLowerCase();
            if (low.contains("инстру") || low.contains("tool")) return m;
        }
        return null;
    }

    private SMPluginEventTriggers() {}
}
