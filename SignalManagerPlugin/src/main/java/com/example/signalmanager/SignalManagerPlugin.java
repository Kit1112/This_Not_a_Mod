package com.example.signalmanager;

import net.mcreator.plugin.JavaPlugin;
import net.mcreator.plugin.Plugin;
import net.mcreator.plugin.events.workspace.MCreatorLoadedEvent;
import net.mcreator.ui.MCreator;

import javax.swing.*;

import com.example.signalmanager.registry.SMPluginActions;
import com.example.signalmanager.registry.SMPluginEventTriggers;
import com.example.signalmanager.services.SignalIO;
import com.example.signalmanager.services.SignalLocalization;

public class SignalManagerPlugin extends JavaPlugin {

    public SignalManagerPlugin(Plugin plugin) {
        super(plugin);

        addListener(MCreatorLoadedEvent.class, event -> SwingUtilities.invokeLater(() -> {
            MCreator mc = event.getMCreator();

            // 2) Подготовим scaffold (SignalRegistry.java + data/<modid>/signals.json)
            try {
                SignalIO.ensureWorkspaceScaffold(mc);
            } catch (Exception ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(mc,
                        "SignalManager init failed:\n" + ex.getMessage(),
                        "SignalManager", JOptionPane.ERROR_MESSAGE);
            }

            // 2.1) Гарантируем дефолтные ключи локализации во всех существующих lang-файлах
            try {
                SignalLocalization.ensureDefaultKeys(mc);
            } catch (Throwable t) {
                t.printStackTrace();
            }

            // 3) Регистрация действий и меню
            SMPluginEventTriggers.ACTIONS = new SMPluginActions(mc);
            SMPluginEventTriggers.modifyMenus(mc);
        }));
    }
}
