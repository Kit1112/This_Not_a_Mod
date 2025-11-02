package net.code.thisnotamod.network;

import net.code.thisnotamod.ThisnotamodMod;
import net.code.thisnotamod.procedures.OpenDebugMenuKeybindProcedure;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.server.level.ServerPlayer;
import net.minecraftforge.network.NetworkEvent;
import net.minecraft.client.player.LocalPlayer;

import java.util.function.Supplier;

public class OpenDebugMenuMessage {
    int type;
    int pressedms;

    public OpenDebugMenuMessage(int type, int pressedms) {
        this.type = type;
        this.pressedms = pressedms;
    }

    public OpenDebugMenuMessage(FriendlyByteBuf buffer) {
        this.type = buffer.readInt();
        this.pressedms = buffer.readInt();
    }

    public static void buffer(OpenDebugMenuMessage msg, FriendlyByteBuf buffer) {
        buffer.writeInt(msg.type);
        buffer.writeInt(msg.pressedms);
    }

    public static void handler(OpenDebugMenuMessage msg, Supplier<NetworkEvent.Context> ctxSup) {
        NetworkEvent.Context ctx = ctxSup.get();
        ctx.enqueueWork(() -> {
            ServerPlayer entity = ctx.getSender();
            if (entity == null) return;
            // Жёстко вызываем вашу процедуру открытия GUI
            OpenDebugMenuKeybindProcedure.execute(entity.level(), entity.getX(), entity.getY(), entity.getZ(), entity);
        });
        ctx.setPacketHandled(true);
    }

	// ВСТАВИТЬ ПЕРЕД static { ... }
public static void pressAction(LocalPlayer player, int type, int pressedms) {
    // Клиентская часть MCreator дергает этот метод.
    // Нам тут ничего делать не нужно — сервер откроет GUI в handler'е сообщения.
    // Оставляем no-op, чтобы не было двойного открытия.
}


    // Саморегистрация в общий канал MCreator без правки главного класса
    static {
        try {
            ThisnotamodMod.addNetworkMessage(
                OpenDebugMenuMessage.class,
                OpenDebugMenuMessage::buffer,
                OpenDebugMenuMessage::new,
                OpenDebugMenuMessage::handler
            );
        } catch (Throwable t) {
            // Если метод недоступен – ничего не делаем, но в стандартной генерации MCreator он есть.
        }
    }
}
