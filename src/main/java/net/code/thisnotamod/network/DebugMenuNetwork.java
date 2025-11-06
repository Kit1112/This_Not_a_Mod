package net.code.thisnotamod.network;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.server.level.ServerPlayer;
import net.minecraftforge.network.NetworkEvent;
import net.minecraftforge.network.PacketDistributor;
import net.code.thisnotamod.ThisnotamodMod;
import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.api.distmarker.OnlyIn;
import net.minecraftforge.fml.DistExecutor;

import java.util.function.Supplier;

/**
 * Свой канал, чтобы не трогать PACKET_HANDLER из главного класса MCreator.
 * Автоинициализация статическим блоком — без правок основного класса.
 */
public class DebugMenuNetwork {
	@OnlyIn(Dist.CLIENT)
private static final class ClientHandlers {
    static void applyInitStateClient(S2CInitState m) {
        net.minecraft.client.Minecraft mc = net.minecraft.client.Minecraft.getInstance();
        if (mc.screen instanceof net.code.thisnotamod.client.gui.DebugMenuScreen screen) {
            screen.applyInitState(m);
        }
    }
}

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
            ThisnotamodMod.addNetworkMessage(
                    C2SServersAction.class,
                    C2SServersAction::encode,
                    C2SServersAction::decode,
                    C2SServersAction::handle
            );
            ThisnotamodMod.addNetworkMessage(
                    C2SWeatherAction.class,
                    C2SWeatherAction::encode,
                    C2SWeatherAction::decode,
                    C2SWeatherAction::handle
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

                try {
                    if (m.scope == Scope.PLAYER) {
                        // Player-persistence:
                        var vars = player
                                .getCapability(net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                                .orElse(null);
                        if (vars != null) {
                            if (m.type == Type.NUMBER) {
                                // существующие
                                if ("DetectorSpeed".equals(m.name))        vars.DetectorSpeed = m.number;
                                if ("downloadSpeed".equals(m.name))        vars.downloadSpeed = m.number;
                                if ("PingerCooldown".equals(m.name))       vars.PingerCooldown = m.number;

                                // новые Signal Scanner
                                if ("SignalScanerSpeedMod".equals(m.name)) vars.SignalScanerSpeedMod = m.number;
                                if ("PingerSpeed".equals(m.name))          vars.PingerSpeed = m.number;
                                if ("pingerSuccesChance".equals(m.name))   vars.pingerSuccesChance = m.number;

                                // новые Signal Download
                                if ("polarityFilterWidth".equals(m.name))  vars.polarityFilterWidth = m.number;
                                if ("frequencyFilterWidth".equals(m.name)) vars.frequencyFilterWidth = m.number;
                            } else { // BOOL
                                if ("debug".equals(m.name))       vars.debug = m.bool;
                                if ("TimeDisplay".equals(m.name)) vars.TimeDisplay = m.bool;
                            }
                            vars.syncPlayerVariables(player);
                        }
                    } else {
                        // Global map:
                        var level = player.level();
                        var map = net.code.thisnotamod.network.ThisnotamodModVariables.MapVariables.get(level);
                        if (map != null) {
                            if ("worldDebug".equals(m.name)) {
                                map.worldDebug = (m.type == Type.BOOL) ? m.bool : (m.number != 0);
                                map.syncData(level);
                            } else if ("Alarm".equals(m.name) && m.type == Type.BOOL) {
                                if (m.bool) {
                                    try { net.code.thisnotamod.procedures.AlarmstartProcedure.execute(level); } catch (Exception ignored) {}
                                    map.AlarmSoundIsPlayed = true;
                                    map.syncData(level);
                                } else {
                                    map.AlarmSoundIsPlayed = false;
                                    map.syncData(level);
                                    try { net.code.thisnotamod.procedures.AlarmStopProcedure.execute(level); } catch (Exception ignored) {}
                                }
                            }
                        }
                    }
                } catch (Exception ignored) {
                    // Если структура переменных иная — просто игнорируем
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

    public static class C2SServersAction {
        public String action; // "break_all" | "repair_all" | "clear_list"
        public C2SServersAction() {}
        public C2SServersAction(String action) { this.action = action; }
        public static void encode(C2SServersAction m, FriendlyByteBuf buf) { buf.writeUtf(m.action); }
        public static C2SServersAction decode(FriendlyByteBuf buf) { return new C2SServersAction(buf.readUtf()); }
        public static void handle(C2SServersAction m, Supplier<NetworkEvent.Context> ctx) {
            ctx.get().enqueueWork(() -> {
                ServerPlayer player = ctx.get().getSender();
                if (player == null) return;
                var level = player.level();
                var map = net.code.thisnotamod.network.ThisnotamodModVariables.MapVariables.get(level);
                if (map == null) return;

                // datamap1: ожидается CompoundTag (ключ = "x,y,z", значение = "enabled"/"disabled")
                var tag = map.datamap1;
                if (tag == null) return;

                java.util.List<String> keys = new java.util.ArrayList<>(tag.getAllKeys());

                switch (m.action) {
                    case "break_all" -> {
                        for (String key : keys) {
                            String[] arr = key.split(",");
                            if (arr.length < 3) continue;
                            double x = parseD(arr[0]), y = parseD(arr[1]), z = parseD(arr[2]);
                            var pos = net.minecraft.core.BlockPos.containing(x, y, z);
                            var bs = level.getBlockState(pos);
                            var def = bs.getBlock().getStateDefinition();
                            var prop = def.getProperty("blockstate");
                            if (prop instanceof net.minecraft.world.level.block.state.properties.IntegerProperty ip && ip.getPossibleValues().contains(2)) {
                                level.setBlock(pos, bs.setValue(ip, 2), 3);
                            }
                            tag.put(key, net.minecraft.nbt.StringTag.valueOf("disabled"));
                        }
                        map.syncData(level);
                    }
                    case "repair_all" -> {
                        for (String key : keys) {
                            String[] arr = key.split(",");
                            if (arr.length < 3) continue;
                            double x = parseD(arr[0]), y = parseD(arr[1]), z = parseD(arr[2]);
                            var pos = net.minecraft.core.BlockPos.containing(x, y, z);
                            var bs = level.getBlockState(pos);
                            var def = bs.getBlock().getStateDefinition();
                            var prop = def.getProperty("blockstate");
                            if (prop instanceof net.minecraft.world.level.block.state.properties.IntegerProperty ip && ip.getPossibleValues().contains(1)) {
                                level.setBlock(pos, bs.setValue(ip, 1), 3);
                            }
                            tag.put(key, net.minecraft.nbt.StringTag.valueOf("enabled"));
                        }
                        map.syncData(level);
                    }
                    case "clear_list" -> {
                        for (String key : keys) tag.remove(key);
                        map.syncData(level);
                    }
                }

                // Отправим клиенту обновлённое состояние
                DebugMenuNetwork.sendToPlayer(player, S2CInitState.fromPlayer(player));
            });
            ctx.get().setPacketHandled(true);
        }

        private static double parseD(String s) {
            try { return Double.parseDouble(s.trim()); } catch (Exception e) { return 0; }
        }
    }

    public static class C2SWeatherAction {
        public String action; // "weather_clear" | "weather_rain" | "weather_thunder"
        public C2SWeatherAction() {}
        public C2SWeatherAction(String action) { this.action = action; }
        public static void encode(C2SWeatherAction m, FriendlyByteBuf buf) { buf.writeUtf(m.action); }
        public static C2SWeatherAction decode(FriendlyByteBuf buf) { return new C2SWeatherAction(buf.readUtf()); }
        public static void handle(C2SWeatherAction m, java.util.function.Supplier<NetworkEvent.Context> ctx) {
            ctx.get().enqueueWork(() -> {
                ServerPlayer player = ctx.get().getSender();
                if (player == null) return;

                // целимся в OVERWORLD и выполняем чистую команду без подсказок/эффектов
                var server = player.server;
                if (server == null) return;
                var overworld = server.getLevel(net.minecraft.world.level.Level.OVERWORLD);
                if (overworld == null) return;

                String cmd = switch (m.action) {
                    case "weather_clear" -> "weather clear";
                    case "weather_rain" -> "weather rain";
                    case "weather_thunder" -> "weather thunder";
                    default -> null;
                };
                if (cmd != null) {
                    // execute in minecraft:overworld run <cmd>, без вывода
                    net.minecraft.commands.CommandSourceStack src =
                            new net.minecraft.commands.CommandSourceStack(
                                    net.minecraft.commands.CommandSource.NULL,
                                    net.minecraft.world.phys.Vec3.atCenterOf(player.blockPosition()),
                                    net.minecraft.world.phys.Vec2.ZERO,
                                    overworld, 4, "", net.minecraft.network.chat.Component.literal(""),
                                    server, null
                            ).withSuppressedOutput();
                    server.getCommands().performPrefixedCommand(src, "execute in minecraft:overworld run " + cmd);
                }
            });
            ctx.get().setPacketHandled(true);
        }
    }

    // ----- Состояние для клиента -----
    public static class S2CInitState {
        // --- doubles ---
        public double signalScanerSpeedMod;
        public double pingerCooldown;
        public double pingerSpeed;
        public double pingerSuccesChance;

        public double detectorSpeed;
        public double downloadSpeed;
        public double polarityFilterWidth;
        public double frequencyFilterWidth;

        // --- bools ---
        public boolean debug;
        public boolean worldDebug;
        public boolean timeDisplay;
        public boolean alarm;

        public static void encode(S2CInitState m, FriendlyByteBuf buf) {
            buf.writeDouble(m.signalScanerSpeedMod);
            buf.writeDouble(m.pingerCooldown);
            buf.writeDouble(m.pingerSpeed);
            buf.writeDouble(m.pingerSuccesChance);

            buf.writeDouble(m.detectorSpeed);
            buf.writeDouble(m.downloadSpeed);
            buf.writeDouble(m.polarityFilterWidth);
            buf.writeDouble(m.frequencyFilterWidth);

            buf.writeBoolean(m.debug);
            buf.writeBoolean(m.worldDebug);
            buf.writeBoolean(m.timeDisplay);
            buf.writeBoolean(m.alarm);
        }

        public static S2CInitState decode(FriendlyByteBuf buf) {
            S2CInitState m = new S2CInitState();
            m.signalScanerSpeedMod = buf.readDouble();
            m.pingerCooldown       = buf.readDouble();
            m.pingerSpeed          = buf.readDouble();
            m.pingerSuccesChance   = buf.readDouble();

            m.detectorSpeed        = buf.readDouble();
            m.downloadSpeed        = buf.readDouble();
            m.polarityFilterWidth  = buf.readDouble();
            m.frequencyFilterWidth = buf.readDouble();

            m.debug       = buf.readBoolean();
            m.worldDebug  = buf.readBoolean();
            m.timeDisplay = buf.readBoolean();
            m.alarm       = buf.readBoolean();
            return m;
        }

        public static S2CInitState fromPlayer(ServerPlayer p) {
            S2CInitState s = new S2CInitState();
            try {
                var vars = p.getCapability(
                        net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null
                ).orElse(null);
                if (vars != null) {
                    // Signal Scanner
                    s.signalScanerSpeedMod = vars.SignalScanerSpeedMod;
                    s.pingerCooldown       = vars.PingerCooldown;
                    s.pingerSpeed          = vars.PingerSpeed;
                    s.pingerSuccesChance   = vars.pingerSuccesChance;

                    // Signal Download
                    s.detectorSpeed        = vars.DetectorSpeed;
                    s.downloadSpeed        = vars.downloadSpeed;
                    s.polarityFilterWidth  = vars.polarityFilterWidth;
                    s.frequencyFilterWidth = vars.frequencyFilterWidth;

                    // player bools
                    s.debug       = vars.debug;
                    s.timeDisplay = vars.TimeDisplay;
                }

                var map = net.code.thisnotamod.network.ThisnotamodModVariables.MapVariables.get(p.level());
                if (map != null) {
                    s.worldDebug = map.worldDebug;
                    try { s.alarm = map.AlarmSoundIsPlayed; } catch (Exception ignored) {}
                }
            } catch (Exception ignored) {}
            return s;
        }

public static void handle(S2CInitState m, Supplier<NetworkEvent.Context> ctx) {
    ctx.get().enqueueWork(() -> {
        final S2CInitState msg = m; // фиксируем ссылку, чтобы ничего лишнего не захватывать
        DistExecutor.unsafeRunWhenOn(Dist.CLIENT, () -> (Runnable) () -> ClientHandlers.applyInitStateClient(msg));
    });
    ctx.get().setPacketHandled(true);
}



    }
}
