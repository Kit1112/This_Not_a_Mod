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

/**
 * Обработчик "автополомки" серверов VotV.
 * Работает строго на стороне сервера и только в Overworld.
 */
@Mod.EventBusSubscriber
public class AutoBreakProcedure {
    @SubscribeEvent
    public static void onWorldTick(TickEvent.LevelTickEvent event) {
        // Выполняем только в конце серверного тика в Overworld
        if (event.phase != TickEvent.Phase.END) return;
        if (event.level.isClientSide()) return;
        if (!event.level.dimension().location().equals(new ResourceLocation("minecraft", "overworld"))) return;

        execute(event, event.level);
    }

    public static void execute(LevelAccessor world) {
        execute(null, world);
    }

    private static void execute(@Nullable Event event, LevelAccessor world) {
        /* Получаем сервер. На самых ранних тиках он может быть ещё не инициализирован,
           поэтому сразу выходим, если server == null. */
        var server = ServerLifecycleHooks.getCurrentServer();
        if (server == null) return;

        // 📌 Измерение, где стоят сервера VotV
        ServerLevel votvWorld = server.getLevel(
            ResourceKey.create(Registries.DIMENSION, new ResourceLocation("thisnotamod", "votv_questing"))
        );
        if (votvWorld == null || votvWorld.players().isEmpty()) return; // Никого нет – нет смысла работать

        long timeOfDay = world.dayTime() % 24000;

        // ⏱ Сброс флага в конце суток
        if (timeOfDay >= 23990) {
            ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday = false;
            ThisnotamodModVariables.MapVariables.get(world).syncData(world);
        }

        // ✅ Запускаем процедуру только один раз в начале игровых суток
        if (timeOfDay == 1 && !ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday) {
            ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday = true;
            ThisnotamodModVariables.MapVariables.get(world).syncData(world);

            // Определяем, сколько серверов "сломать" сегодня (от 1 до 3)
            ThisnotamodModVariables.autoBreakServList.clear();
            ThisnotamodModVariables.MapVariables.get(world).random = Mth.nextInt(RandomSource.create(), 1, 3);
            ThisnotamodModVariables.MapVariables.get(world).syncData(world);

            if (ThisnotamodModVariables.MapVariables.get(world).worldDebug) {
                server.getPlayerList().broadcastSystemMessage(
                    Component.literal("Будет сломано " + ThisnotamodModVariables.MapVariables.get(world).random + " серверов сегодня."),
                    false
                );
            }

            // Заполняем общий список всех серверов
            for (String key : ThisnotamodModVariables.MapVariables.get(world).datamap1.getAllKeys()) {
                ThisnotamodModVariables.autoBreakServList.add(key);
            }

            // 🧠 Делаем копию – будем из неё случайно выбирать
            List<String> remainingServers = new ArrayList<>();
            for (Object obj : ThisnotamodModVariables.autoBreakServList) {
                remainingServers.add(String.valueOf(obj));
            }

            int breaksToDo = (int) ThisnotamodModVariables.MapVariables.get(world).random;
            for (int i = 0; i < breaksToDo; i++) {
                if (remainingServers.isEmpty()) break;

                int index = Mth.nextInt(RandomSource.create(), 0, remainingServers.size() - 1);
                String key = remainingServers.remove(index);

                // Проверяем, что сервер в состоянии "enabled"
                StringTag tag = ThisnotamodModVariables.MapVariables.get(world).datamap1.get(key) instanceof StringTag _s ? _s : null;
                if (tag == null || !"enabled".equals(tag.getAsString())) continue;

                // Координаты блока‑сервера
                String[] coords = key.split(",");
                List<String> coordsList = new ArrayList<>();
                for (String c : coords) coordsList.add(c.trim());

                ThisnotamodModVariables.servCoordsForAutobreak.clear();
                ThisnotamodModVariables.servCoordsForAutobreak.addAll(coordsList);

                // Копия для лямбды
                List<String> coordsCopy = new ArrayList<>(coordsList);

                // Планируем "поломку" в случайный тик сегодняшнего дня
                ThisnotamodMod.queueServerWork(Mth.nextInt(RandomSource.create(), 1, 23999), () -> {
                    int brokenState = 2; // значение IntegerProperty "blockstate", обозначающее сломанный сервер

                    double x = parse(coordsCopy.get(0));
                    double y = parse(coordsCopy.get(1));
                    double z = parse(coordsCopy.get(2));

                    BlockPos pos = BlockPos.containing(x, y, z);
                    BlockState bs = votvWorld.getBlockState(pos);

                    if (bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty prop &&
                        prop.getPossibleValues().contains(brokenState)) {
                        votvWorld.setBlock(pos, bs.setValue(prop, brokenState), 3);
                    }

                    if (ThisnotamodModVariables.MapVariables.get(votvWorld).worldDebug) {
                        server.getPlayerList().broadcastSystemMessage(
                            Component.literal("Должен был сломаться сервер по координатам X:" + coordsCopy.get(0) +
                                              " Y:" + coordsCopy.get(1) +
                                              " Z:" + coordsCopy.get(2)),
                            false
                        );
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
