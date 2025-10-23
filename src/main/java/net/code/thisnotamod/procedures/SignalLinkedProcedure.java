package net.code.thisnotamod.procedures;

import net.code.thisnotamod.client.SignalPicker;
import net.code.thisnotamod.client.gui.SignalTunerScreen;
import net.minecraft.world.entity.Entity;
import javax.annotation.Nullable;

/**
 * Совместимость со старыми вызовами MCreator.
 * Теперь просто делегирует в SignalPicker и прокидывает данные в тюнер.
 */
public class SignalLinkedProcedure {

    /** Старый сигнатурный вызов от MCreator: execute(player) -> ignore player. */
    public static void execute(@Nullable Entity ignored) {
        execute();
    }

    /** Универсальный вызов после успешной поимки. */
    public static void execute() {
        var picked = SignalPicker.pickRandomRegular();
        SignalTunerScreen.applyPickedSignal(picked);
    }

    private SignalLinkedProcedure() {}
}
