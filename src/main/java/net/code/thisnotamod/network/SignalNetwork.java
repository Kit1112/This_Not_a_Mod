package net.code.thisnotamod.network;

import net.minecraft.resources.ResourceLocation;
import net.minecraftforge.network.NetworkRegistry;
import net.minecraftforge.network.simple.SimpleChannel;

public final class SignalNetwork {
    public static final String PROTOCOL = "1";
    public static SimpleChannel CHANNEL; // создадим РАНО в конструкторе мода

    private static int id = 0;

    /** Создать канал, если ещё не создан. ВЫЗВАТЬ из конструктора мода. */
    public static void bootstrap() {
        if (CHANNEL != null) return;
        CHANNEL = NetworkRegistry.newSimpleChannel(
                new ResourceLocation("thisnotamod", "signal_bus"),
                () -> PROTOCOL, PROTOCOL::equals, PROTOCOL::equals
        );
    }

    public static void register() {
    	if (CHANNEL == null) bootstrap();
        CHANNEL.registerMessage(id++, RequestNextSignalC2S.class,
                RequestNextSignalC2S::encode, RequestNextSignalC2S::decode, RequestNextSignalC2S::handle);
        CHANNEL.registerMessage(id++, ApplyPickedSignalS2C.class,
                ApplyPickedSignalS2C::encode, ApplyPickedSignalS2C::decode, ApplyPickedSignalS2C::handle);
    }

    private SignalNetwork() {}
}
