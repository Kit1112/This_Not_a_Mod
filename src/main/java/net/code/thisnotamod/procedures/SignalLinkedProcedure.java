package net.code.thisnotamod.procedures;

import net.code.thisnotamod.client.SignalPicker;
import net.code.thisnotamod.client.gui.SignalTunerScreen;
import net.minecraft.world.entity.Entity;
import javax.annotation.Nullable;
import net.code.thisnotamod.network.SignalNetwork;
import net.code.thisnotamod.network.RequestNextSignalC2S;
import net.code.thisnotamod.network.ApplyPickedSignalS2C;

import net.minecraft.server.level.ServerPlayer;
import net.code.thisnotamod.ThisnotamodMod;
import net.minecraftforge.network.NetworkDirection;

// ВНИМАНИЕ: прямой выбор на клиенте убран. Теперь выбор всегда делается на сервере через сеть.ёё

/**
 * Совместимость со старыми вызовами MCreator.
 * Делегирует в SignalPicker и прокидывает данные в тюнер.
 */
public class SignalLinkedProcedure {

    /** Старый сигнатурный вызов от MCreator: execute(player).
 *  Если пришёл серверный игрок — выбираем на сервере и шлём результат клиенту.
 *  Иначе (клиент/Null) — просим сервер выбрать через C2S.
 */
public static void execute(@Nullable Entity ignored) {
    if (ignored instanceof ServerPlayer sp) {
        // серверная сторона: выбрать и прислать на клиент
		SignalPicker.PickedSignal ps = SignalPicker.pickNext(sp);
		ThisnotamodMod.PACKET_HANDLER.sendTo(new ApplyPickedSignalS2C(ps), sp.connection.connection, NetworkDirection.PLAY_TO_CLIENT);
    } else {
        // клиентская сторона (или null): запросить у сервера выбор
        ThisnotamodMod.PACKET_HANDLER.sendToServer(new RequestNextSignalC2S());
    }
}


    /** Универсальный вызов без Entity: на клиенте просим сервер выбрать следующий сигнал.
 *  (Совместимость со старыми вызовами MCreator.)
 */
public static void execute() {
    ThisnotamodMod.PACKET_HANDLER.sendToServer(new RequestNextSignalC2S());
}

    private SignalLinkedProcedure() {}
}
