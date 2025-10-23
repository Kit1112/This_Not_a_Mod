package com.example.signalmanager;

import net.mcreator.plugin.JavaPlugin;
import net.mcreator.plugin.Plugin;
import net.mcreator.plugin.events.workspace.MCreatorLoadedEvent;
import net.mcreator.ui.MCreator;

import javax.swing.*;

import com.example.signalmanager.registry.SMPluginActions;
import com.example.signalmanager.registry.SMPluginEventTriggers;
import com.example.signalmanager.services.SignalLocalization;
import com.example.signalmanager.services.SignalIO;

public class SignalManagerPlugin extends JavaPlugin {

    public SignalManagerPlugin(Plugin plugin) {
        super(plugin);

        // Когда студия загрузилась — готовим всё и добавляем меню
        addListener(MCreatorLoadedEvent.class, event -> SwingUtilities.invokeLater(() -> {
            MCreator mc = event.getMCreator();

            try {
                // scaffold (JSON + registry)
                SignalIO.ensureWorkspaceScaffold(mc);
                // гарантируем наличие дефолтов в lang
                SignalLocalization.ensureDefaultKeys(mc);
                // тихо «подливаем» наши ключи из зеркала, если нужно (без рефлексии и лишних логов)
                SignalLocalization.reapplyPersistedKeys(mc);
            } catch (Exception ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(mc,
                        "SignalManager init failed:\n" + ex.getMessage(),
                        "SignalManager", JOptionPane.ERROR_MESSAGE);
            }

            // Регистрируем экшены и добавляем выпадающее меню «Сигналы» сразу после «Справка»
            SMPluginEventTriggers.ACTIONS = new SMPluginActions(mc);
            SMPluginEventTriggers.modifyMenuBarAfterHelp(mc);
        }));
    }
}
