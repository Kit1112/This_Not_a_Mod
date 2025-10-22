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

        addListener(MCreatorLoadedEvent.class, event -> SwingUtilities.invokeLater(() -> {
            MCreator mc = event.getMCreator();

            try {
                SignalIO.ensureWorkspaceScaffold(mc);
                SignalLocalization.ensureDefaultKeys(mc);
            } catch (Exception ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(mc,
                        "SignalManager init failed:\n" + ex.getMessage(),
                        "SignalManager", JOptionPane.ERROR_MESSAGE);
            }

            SMPluginEventTriggers.ACTIONS = new SMPluginActions(mc);

            // Новый способ: пункт «Сигналы» сразу после «Справка»
            SMPluginEventTriggers.modifyMenuBarAfterHelp(mc);

            // Если хочешь оставить ещё и в «Инструменты», можно добросить:
            // SMPluginEventTriggers.modifyMenus(mc);
        }));
    }
}
