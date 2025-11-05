package net.code.thisnotamod.network;

import net.minecraftforge.network.NetworkEvent;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.resources.ResourceLocation;

import java.util.function.Supplier;

public class ShowTipMessage {
    private final String text;
    private final ResourceLocation iconId;
    private final ResourceLocation soundId;

    public ShowTipMessage(String text, ResourceLocation iconId, ResourceLocation soundId) {
        this.text = text;
        this.iconId = iconId;
        this.soundId = soundId;
    }

    public ShowTipMessage(FriendlyByteBuf buf) {
        this.text = buf.readUtf(32767);
        this.iconId = buf.readResourceLocation();
        this.soundId = buf.readResourceLocation();
    }

    public static void buffer(ShowTipMessage msg, FriendlyByteBuf buf) {
        buf.writeUtf(msg.text);
        buf.writeResourceLocation(msg.iconId);
        buf.writeResourceLocation(msg.soundId);
    }

    public static void handler(ShowTipMessage msg, Supplier<NetworkEvent.Context> ctx) {
        NetworkEvent.Context c = ctx.get();
        // Пакет получаем ТОЛЬКО на клиенте, поэтому сразу зовём клиентский обработчик
        c.enqueueWork(() -> net.code.thisnotamod.client.TipClientHandlers
                .handleShowTip(msg.text, msg.iconId, msg.soundId));
        c.setPacketHandled(true);
    }
}
