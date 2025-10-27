package net.code.thisnotamod.network;

import net.code.thisnotamod.client.SignalPicker;
import net.minecraft.client.Minecraft;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.resources.ResourceLocation;
import net.minecraftforge.network.NetworkEvent;

import java.util.function.Supplier;

public class ApplyPickedSignalS2C {

    // передаём всё, что нужно для apply
    public final int id;
    public final String type;
    public final String objectNameKey;
    public final ResourceLocation objectImageTex;
    public final String quality;
    public final String frequency;
    public final int targetPolarityDir;
    public final double targetPolarityDeg;
    public final double targetFrequency;

    public ApplyPickedSignalS2C(SignalPicker.PickedSignal ps) {
        this.id = ps.id;
        this.type = ps.type;
        this.objectNameKey = ps.objectNameKey;
        this.objectImageTex = ps.objectImageTex;
        this.quality = ps.quality;
        this.frequency = ps.frequency;
        this.targetPolarityDir = ps.targetPolarityDir;
        this.targetPolarityDeg = ps.targetPolarityDeg;
        this.targetFrequency = ps.targetFrequency;
    }

    public ApplyPickedSignalS2C(int id, String type, String objectNameKey, ResourceLocation objectImageTex,
                                String quality, String frequency, int targetPolarityDir,
                                double targetPolarityDeg, double targetFrequency) {
        this.id = id;
        this.type = type;
        this.objectNameKey = objectNameKey;
        this.objectImageTex = objectImageTex;
        this.quality = quality;
        this.frequency = frequency;
        this.targetPolarityDir = targetPolarityDir;
        this.targetPolarityDeg = targetPolarityDeg;
        this.targetFrequency = targetFrequency;
    }

    public static void encode(ApplyPickedSignalS2C msg, FriendlyByteBuf buf) {
        buf.writeVarInt(msg.id);
        buf.writeUtf(msg.type);
        buf.writeUtf(msg.objectNameKey);
        buf.writeResourceLocation(msg.objectImageTex);
        buf.writeUtf(msg.quality);
        buf.writeUtf(msg.frequency);
        buf.writeVarInt(msg.targetPolarityDir);
        buf.writeDouble(msg.targetPolarityDeg);
        buf.writeDouble(msg.targetFrequency);
    }

    public static ApplyPickedSignalS2C decode(FriendlyByteBuf buf) {
        int id = buf.readVarInt();
        String type = buf.readUtf();
        String obj = buf.readUtf();
        ResourceLocation tex = buf.readResourceLocation();
        String q = buf.readUtf();
        String f = buf.readUtf();
        int dir = buf.readVarInt();
        double deg = buf.readDouble();
        double frq = buf.readDouble();
        return new ApplyPickedSignalS2C(id, type, obj, tex, q, f, dir, deg, frq);
    }

    public static void handle(ApplyPickedSignalS2C msg, Supplier<NetworkEvent.Context> ctx) {
        NetworkEvent.Context c = ctx.get();
        c.enqueueWork(() -> {
            // применяем на КЛИЕНТЕ
            SignalPicker.PickedSignal ps = new SignalPicker.PickedSignal(
                    msg.id, msg.type, msg.objectNameKey, msg.objectImageTex,
                    msg.quality, msg.frequency, msg.targetPolarityDir, msg.targetPolarityDeg, msg.targetFrequency
            );
            // важное: вызывай твой метод GUI/клиента в main-thread
            Minecraft mc = Minecraft.getInstance();
            mc.execute(() -> {
                // прямой статический вызов, как у тебя и было
                net.code.thisnotamod.client.gui.SignalTunerScreen.applyPickedSignal(ps);
            });
        });
        c.setPacketHandled(true);
    }
}
