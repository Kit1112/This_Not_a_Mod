package net.code.thisnotamod.network;

import net.code.thisnotamod.client.gui.DebugMenuScreen;
import net.minecraft.client.Minecraft;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.server.level.ServerPlayer;
import net.minecraftforge.network.NetworkEvent;
import net.minecraftforge.network.NetworkRegistry;
import net.minecraftforge.network.simple.SimpleChannel;
import net.minecraftforge.network.PacketDistributor;
import net.code.thisnotamod.ThisnotamodMod;
import net.minecraftforge.network.PacketDistributor;

import java.util.function.Supplier;

/**
 * Свой канал, чтобы не трогать PACKET_HANDLER из главного класса MCreator.
 * Автоинициализация статическим блоком — без правок основного класса.
 */
public class DebugMenuNetwork {
    // Используем канал MCreator
public static void sendToServer(Object msg) {
    ThisnotamodMod.PACKET_HANDLER.sendToServer(msg);
}
public static void sendToPlayer(ServerPlayer player, Object msg) {
    ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> player), msg);
}

// Регистрируем наши сообщения через стандартный механизм MCreator
static {
    try {
        ThisnotamodMod.addNetworkMessage(
                C2SSetVarMessage.class,
                C2SSetVarMessage::encode,
                C2SSetVarMessage::decode,
                C2SSetVarMessage::handle
        );
        ThisnotamodMod.addNetworkMessage(
                C2SRequestInit.class,
                C2SRequestInit::encode,
                C2SRequestInit::decode,
                C2SRequestInit::handle
        );
        ThisnotamodMod.addNetworkMessage(
                S2CInitState.class,
                S2CInitState::encode,
                S2CInitState::decode,
                S2CInitState::handle
        );
    } catch (Throwable ignored) {
        // если метод недоступен — проигнорируем (в стандартной сборке MCreator он есть)
    }
}


    // ----- Сообщение: установка переменной с клиента -----
    public static class C2SSetVarMessage {
        public enum Type { NUMBER, BOOL }
        public enum Scope { PLAYER, MAP }

        public Type type;
        public Scope scope;
        public String name;
        public double number;
        public boolean bool;

        public C2SSetVarMessage() {}

        public C2SSetVarMessage(Type type, Scope scope, String name, double number, boolean boolVal) {
            this.type = type;
            this.scope = scope;
            this.name = name;
            this.number = number;
            this.bool = boolVal;
        }

        public static void encode(C2SSetVarMessage m, FriendlyByteBuf buf) {
            buf.writeEnum(m.type);
            buf.writeEnum(m.scope);
            buf.writeUtf(m.name);
            buf.writeDouble(m.number);
            buf.writeBoolean(m.bool);
        }

        public static C2SSetVarMessage decode(FriendlyByteBuf buf) {
            C2SSetVarMessage m = new C2SSetVarMessage();
            m.type = buf.readEnum(Type.class);
            m.scope = buf.readEnum(Scope.class);
            m.name = buf.readUtf();
            m.number = buf.readDouble();
            m.bool = buf.readBoolean();
            return m;
        }

        public static void handle(C2SSetVarMessage m, Supplier<NetworkEvent.Context> ctx) {
            ctx.get().enqueueWork(() -> {
                ServerPlayer player = ctx.get().getSender();
                if (player == null) return;

                // ***** ПРИВЯЗКА К ПЕРЕМЕННЫМ MCREATOR *****
                try {
                    if (m.scope == Scope.PLAYER) {
                        // Player-persistence:
                        net.code.thisnotamod.network.ThisnotamodModVariables.PlayerVariables vars =
                                player.getCapability(net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                                        .orElse(null);
                        if (vars != null) {
                            if (m.type == Type.NUMBER) {
                                // привязка по имени поля
                                if ("DetectorSpeed".equals(m.name)) vars.DetectorSpeed = m.number;
                                if ("downloadSpeed".equals(m.name)) vars.downloadSpeed = m.number;
                                if ("PingerCooldown".equals(m.name)) vars.PingerCooldown = m.number;
                            } else {
                                if ("debug".equals(m.name)) vars.debug = m.bool;
                                if ("TimeDisplay".equals(m.name)) vars.TimeDisplay = m.bool;
                            }
                            vars.syncPlayerVariables(player);
                        }
                    } else {
                        // Global map:
                        net.code.thisnotamod.network.ThisnotamodModVariables.MapVariables map =
                                net.code.thisnotamod.network.ThisnotamodModVariables.MapVariables.get(player.level());
                        if (map != null) {
                            if ("worldDebug".equals(m.name)) map.worldDebug = (m.type == Type.BOOL) ? m.bool : (m.number != 0);
                            map.syncData(player.level());
                        }
                    }
                } catch (Exception ignored) {
                    // Если по каким-то причинам структура переменных иная — просто игнорируем (но канал не ломаем)
                }

                // После изменения отправим актуальные значения обратно клиенту
                S2CInitState state = S2CInitState.fromPlayer(player);
				DebugMenuNetwork.sendToPlayer(player, state);

            });
            ctx.get().setPacketHandled(true);
        }
    }

    // ----- Запрос начального состояния от клиента -----
    public static class C2SRequestInit {
        public static void encode(C2SRequestInit m, FriendlyByteBuf buf) {}
        public static C2SRequestInit decode(FriendlyByteBuf buf) { return new C2SRequestInit(); }
        public static void handle(C2SRequestInit m, Supplier<NetworkEvent.Context> ctx) {
            ctx.get().enqueueWork(() -> {
                ServerPlayer player = ctx.get().getSender();
                if (player == null) return;
                S2CInitState state = S2CInitState.fromPlayer(player);
				DebugMenuNetwork.sendToPlayer(player, state);


            });
            ctx.get().setPacketHandled(true);
        }
    }

    // ----- Состояние для клиента -----
    public static class S2CInitState {
        public double detectorSpeed;
        public double downloadSpeed;
        public double pingerCooldown;
        public boolean debug;
        public boolean worldDebug;
        public boolean timeDisplay;

        public static void encode(S2CInitState m, FriendlyByteBuf buf) {
            buf.writeDouble(m.detectorSpeed);
            buf.writeDouble(m.downloadSpeed);
            buf.writeDouble(m.pingerCooldown);
            buf.writeBoolean(m.debug);
            buf.writeBoolean(m.worldDebug);
            buf.writeBoolean(m.timeDisplay);
        }
        public static S2CInitState decode(FriendlyByteBuf buf) {
            S2CInitState m = new S2CInitState();
            m.detectorSpeed = buf.readDouble();
            m.downloadSpeed = buf.readDouble();
            m.pingerCooldown = buf.readDouble();
            m.debug = buf.readBoolean();
            m.worldDebug = buf.readBoolean();
            m.timeDisplay = buf.readBoolean();
            return m;
        }

        public static S2CInitState fromPlayer(ServerPlayer p) {
            S2CInitState s = new S2CInitState();
            try {
                net.code.thisnotamod.network.ThisnotamodModVariables.PlayerVariables vars =
                        p.getCapability(net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                                .orElse(null);
                if (vars != null) {
                    s.detectorSpeed = vars.DetectorSpeed;
                    s.downloadSpeed = vars.downloadSpeed;
                    s.pingerCooldown = vars.PingerCooldown;
                    s.debug = vars.debug;
                    s.timeDisplay = vars.TimeDisplay;
                }
                net.code.thisnotamod.network.ThisnotamodModVariables.MapVariables map =
                        net.code.thisnotamod.network.ThisnotamodModVariables.MapVariables.get(p.level());
                if (map != null) {
                    s.worldDebug = map.worldDebug;
                }
            } catch (Exception ignored) {}
            return s;
        }

        public static void handle(S2CInitState m, Supplier<NetworkEvent.Context> ctx) {
            ctx.get().enqueueWork(() -> {
                if (Minecraft.getInstance().screen instanceof DebugMenuScreen screen) {
                    screen.applyInitState(m);
                }
            });
            ctx.get().setPacketHandled(true);
        }
    }
}
