package net.code.thisnotamod.network;

import net.code.thisnotamod.client.SignalPicker;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraftforge.network.NetworkEvent;
import net.minecraft.server.level.ServerPlayer;

import net.code.thisnotamod.ThisnotamodMod;
import net.minecraftforge.network.NetworkDirection;

import java.util.function.Supplier;

public class RequestNextSignalC2S {

    public RequestNextSignalC2S() {}

    public static void encode(RequestNextSignalC2S msg, FriendlyByteBuf buf) {}
    public static RequestNextSignalC2S decode(FriendlyByteBuf buf) { return new RequestNextSignalC2S(); }

    public static void handle(RequestNextSignalC2S msg, Supplier<NetworkEvent.Context> ctx) {
        NetworkEvent.Context c = ctx.get();
        c.enqueueWork(() -> {
            ServerPlayer sp = c.getSender();
            if (sp == null) return;

            // выбираем на СЕРВЕРЕ
            SignalPicker.PickedSignal ps = SignalPicker.pickNext(sp);

            // отправляем результат клиенту
            ThisnotamodMod.PACKET_HANDLER.sendTo(new ApplyPickedSignalS2C(ps), sp.connection.connection, NetworkDirection.PLAY_TO_CLIENT);
        });
        c.setPacketHandled(true);
    }
}
