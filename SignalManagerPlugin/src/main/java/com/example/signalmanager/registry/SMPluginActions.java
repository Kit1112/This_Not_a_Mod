package com.example.signalmanager.registry;

import net.mcreator.ui.MCreator;
import net.mcreator.ui.action.ActionRegistry;
import net.mcreator.ui.action.BasicAction;
import net.mcreator.ui.init.L10N;

import javax.swing.*;

public class SMPluginActions extends ActionRegistry {

    public final BasicAction createSignal;
    public final BasicAction editSignals;

    private final MCreator mcreator;

    public SMPluginActions(MCreator mcreator) {
        super(mcreator);
        this.mcreator = mcreator;

        this.createSignal = new BasicAction(this,
                safeT("signalmanager.menu.create", "Создать сигнал"),
                e -> performCreate());

        this.editSignals = new BasicAction(this,
                safeT("signalmanager.menu.edit", "Редактировать таблицу сигналов"),
                e -> performEdit());
    }

    /** Вызывается из меню и из BasicAction */
    public void performCreate() {
        try {
            com.example.signalmanager.services.SignalIO.ensureWorkspaceScaffold(mcreator);
            com.example.signalmanager.ui.CreateFormDialog.open(mcreator, null);
        } catch (Exception ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(mcreator, ex.getMessage(), "SignalManager", JOptionPane.ERROR_MESSAGE);
        }
    }

    /** Вызывается из меню и из BasicAction */
    public void performEdit() {
        try {
            com.example.signalmanager.services.SignalIO.ensureWorkspaceScaffold(mcreator);
            com.example.signalmanager.ui.EditTableDialog.open(mcreator);
        } catch (Exception ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(mcreator, ex.getMessage(), "SignalManager", JOptionPane.ERROR_MESSAGE);
        }
    }

    private static String safeT(String key, String fallback) {
        try {
            String v = L10N.t(key);
            if (v == null || v.isBlank() || v.equals(key)) return fallback;
            return v;
        } catch (Throwable t) {
            return fallback;
        }
    }
}
