package net.code.thisnotamod.network;

import net.code.thisnotamod.ThisnotamodMod;
import net.code.thisnotamod.ThisnotamodMod.TextboxSetMessage;

import java.util.concurrent.atomic.AtomicBoolean;

public final class NetBootstrap {
    private static final AtomicBoolean DONE = new AtomicBoolean(false);

    /** Вызывай в любом месте перед первой отправкой сообщений. Повторные вызовы безопасны. */
    public static void ensureRegistered() {
        if (DONE.getAndSet(true)) return;

        // Регистрируем сообщения ровно один раз на сторону (client/server).
        ThisnotamodMod.addNetworkMessage(
                TextboxSetMessage.class,
                TextboxSetMessage::buffer,
                TextboxSetMessage::new,
                TextboxSetMessage::handler
        );

        ThisnotamodMod.addNetworkMessage(
                net.code.thisnotamod.network.RequestNextSignalC2S.class,
                net.code.thisnotamod.network.RequestNextSignalC2S::encode,
                net.code.thisnotamod.network.RequestNextSignalC2S::decode,
                net.code.thisnotamod.network.RequestNextSignalC2S::handle
        );

        ThisnotamodMod.addNetworkMessage(
                net.code.thisnotamod.network.ApplyPickedSignalS2C.class,
                net.code.thisnotamod.network.ApplyPickedSignalS2C::encode,
                net.code.thisnotamod.network.ApplyPickedSignalS2C::decode,
                net.code.thisnotamod.network.ApplyPickedSignalS2C::handle
        );
    }

    private NetBootstrap() {}
}
