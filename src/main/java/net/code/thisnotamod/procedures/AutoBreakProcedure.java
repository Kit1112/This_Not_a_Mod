package net.code.thisnotamod.procedures;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.eventbus.api.Event;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.server.ServerLifecycleHooks;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.resources.ResourceKey;
import net.minecraft.core.registries.Registries;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.util.RandomSource;
import net.minecraft.util.Mth;
import net.minecraft.network.chat.Component;
import net.minecraft.nbt.StringTag;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.ThisnotamodMod;

import javax.annotation.Nullable;
import java.util.List;
import java.util.ArrayList;

@Mod.EventBusSubscriber
public class AutoBreakProcedure {
    @SubscribeEvent
    public static void onWorldTick(TickEvent.LevelTickEvent event) {
        if (event.phase != TickEvent.Phase.END) return;
        if (event.level.isClientSide()) return;
        if (!event.level.dimension().location().equals(new ResourceLocation("minecraft", "overworld"))) return;

        execute(event, event.level);
    }

    public static void execute(LevelAccessor world) {
        execute(null, world);
    }

    private static void execute(@Nullable Event event, LevelAccessor world) {
        var server = ServerLifecycleHooks.getCurrentServer();
        if (server == null) return;

        ServerLevel votvWorld = server.getLevel(
            ResourceKey.create(Registries.DIMENSION, new ResourceLocation("thisnotamod", "votv_questing"))
        );
        if (votvWorld == null || votvWorld.players().isEmpty()) return;

        long timeOfDay = world.dayTime() % 24000;

        if (timeOfDay >= 23990) {
            ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday = false;
            ThisnotamodModVariables.MapVariables.get(world).syncData(world);
        }

        if (timeOfDay == 1 && !ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday) {
            ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday = true;
            ThisnotamodModVariables.MapVariables.get(world).syncData(world);

            ThisnotamodModVariables.autoBreakServList.clear();
            ThisnotamodModVariables.MapVariables.get(world).random = Mth.nextInt(RandomSource.create(), 1, 3);
            ThisnotamodModVariables.MapVariables.get(world).syncData(world);

            if (ThisnotamodModVariables.MapVariables.get(world).worldDebug) {
                server.getPlayerList().broadcastSystemMessage(
                    Component.literal("Будет сломано " + ThisnotamodModVariables.MapVariables.get(world).random + " серверов сегодня."),
                    false
                );
                server.getPlayerList().broadcastSystemMessage(
                    Component.literal("Всего ключей в datamap1: " + ThisnotamodModVariables.MapVariables.get(world).datamap1.getAllKeys().size()),
                    false
                );
            }

            for (String key : ThisnotamodModVariables.MapVariables.get(world).datamap1.getAllKeys()) {
                ThisnotamodModVariables.autoBreakServList.add(key);
            }

            List<String> remainingServers = new ArrayList<>();
            for (Object obj : ThisnotamodModVariables.autoBreakServList) {
                remainingServers.add(String.valueOf(obj));
            }

            int breaksToDo = (int) ThisnotamodModVariables.MapVariables.get(world).random;
            for (int i = 0; i < breaksToDo; i++) {
                if (remainingServers.isEmpty()) break;

                int index = Mth.nextInt(RandomSource.create(), 0, remainingServers.size() - 1);
                String key = remainingServers.remove(index);

                StringTag tag = ThisnotamodModVariables.MapVariables.get(world).datamap1.get(key) instanceof StringTag _s ? _s : null;
                if (tag == null || !"enabled".equalsIgnoreCase(tag.getAsString().trim())) {
                    if (ThisnotamodModVariables.MapVariables.get(world).worldDebug) {
                        server.getPlayerList().broadcastSystemMessage(
                            Component.literal("Пропущен ключ " + key + " (состояние: " + (tag != null ? tag.getAsString() : "null") + ")"),
                            false
                        );
                    }
                    continue;
                }

                String[] coords = key.split(",");
                List<String> coordsList = new ArrayList<>();
                for (String c : coords) coordsList.add(c.trim());

                ThisnotamodModVariables.servCoordsForAutobreak.clear();
                ThisnotamodModVariables.servCoordsForAutobreak.addAll(coordsList);

                List<String> coordsCopy = new ArrayList<>(coordsList);

                int delay = Mth.nextInt(RandomSource.create(), 1, 23999);

                // 🔔 Перемещённый лог: теперь выводится сразу
                if (ThisnotamodModVariables.MapVariables.get(world).worldDebug) {
                    server.getPlayerList().broadcastSystemMessage(
                        Component.literal("⏳ Отложенная поломка сервера: " + coordsCopy + " через " + delay + " тиков"),
                        false
                    );
                }

                // === НОВОЕ: зафиксировать ключ для использования внутри лямбды ===
                final String selectedKey = key;

                ThisnotamodMod.queueServerWork(delay, () -> {
                    int brokenState = 2;

                    double x = parse(coordsCopy.get(0));
                    double y = parse(coordsCopy.get(1));
                    double z = parse(coordsCopy.get(2));

                    BlockPos pos = BlockPos.containing(x, y, z);
                    BlockState bs = votvWorld.getBlockState(pos);

                    if (ThisnotamodModVariables.MapVariables.get(world).worldDebug) {
                        server.getPlayerList().broadcastSystemMessage(
                            Component.literal("🔍 Проверка блока на позиции " + pos + ": " + bs),
                            false
                        );
                    }

                    if (bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty prop &&
                        prop.getPossibleValues().contains(brokenState)) {
                        votvWorld.setBlock(pos, bs.setValue(prop, brokenState), 3);

                        // === НОВОЕ: обновить datamap1: enabled -> disabled ===
                        var mv = ThisnotamodModVariables.MapVariables.get(world); // используем тот же мир, откуда читали datamap1
                        mv.datamap1.remove(selectedKey);
                        mv.datamap1.put(selectedKey, StringTag.valueOf("disabled"));
                        mv.syncData(world);

                        if (mv.worldDebug) {
                            server.getPlayerList().broadcastSystemMessage(
                                Component.literal("🗂 Обновлён datamap: " + selectedKey + " → disabled"),
                                false
                            );
                        }

                        if (ThisnotamodModVariables.MapVariables.get(votvWorld).worldDebug) {
                            server.getPlayerList().broadcastSystemMessage(
                                Component.literal("💥 Сломан сервер по координатам X:" + coordsCopy.get(0) +
                                                  " Y:" + coordsCopy.get(1) +
                                                  " Z:" + coordsCopy.get(2)),
                                false
                            );
                        }
                    } else {
                        if (ThisnotamodModVariables.MapVariables.get(votvWorld).worldDebug) {
                            server.getPlayerList().broadcastSystemMessage(
                                Component.literal("⚠ Не удалось сломать блок: нет свойства blockstate или нет значения 2"),
                                false
                            );
                        }
                    }
                });
            }
        }
    }

    private static double parse(String s) {
        try {
            return Double.parseDouble(s.trim());
        } catch (Exception e) {
            return 0;
        }
    }
}
