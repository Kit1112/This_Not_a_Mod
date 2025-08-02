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
		if (event.phase == TickEvent.Phase.END) {
			// Только в Overworld
			if (event.level.dimension().location().toString().equals("minecraft:overworld")) {
				execute(event, event.level);
			}
		}
	}

	public static void execute(LevelAccessor world) {
		execute(null, world);
	}

	private static void execute(@Nullable Event event, LevelAccessor world) {
		// 📌 Проверяем наличие игроков в измерении votv_questing
		ServerLevel votvWorld = ServerLifecycleHooks.getCurrentServer().getLevel(
			ResourceKey.create(Registries.DIMENSION, new ResourceLocation("thisnotamod", "votv_questing"))
		);
		if (votvWorld == null || votvWorld.players().isEmpty()) {
			return; // ⛔ Никого нет — не выполняем вообще ничего
		}

		List<Object> servCoords = new ArrayList<>();

		long timeOfDay = world.dayTime() % 24000;

		// ⏱ Сброс флага в конце суток
		if (timeOfDay >= 23990) {
			ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday = false;
			ThisnotamodModVariables.MapVariables.get(world).syncData(world);
		}

		// ✅ Выполняем автополомку только 1 раз в начале суток
		if (timeOfDay == 1 && !ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday) {
			ThisnotamodModVariables.MapVariables.get(world).autobreakExecutedToday = true;
			ThisnotamodModVariables.MapVariables.get(world).syncData(world);

			ThisnotamodModVariables.autoBreakServList.clear();
			ThisnotamodModVariables.MapVariables.get(world).random = Mth.nextInt(RandomSource.create(), 1, 3);
			ThisnotamodModVariables.MapVariables.get(world).syncData(world);

			if (!world.isClientSide() && world.getServer() != null &&
				ThisnotamodModVariables.MapVariables.get(world).worldDebug) {
				world.getServer().getPlayerList().broadcastSystemMessage(
					Component.literal("Будет сломано " + ThisnotamodModVariables.MapVariables.get(world).random + " серверов сегодня."),
					false
				);
			}

			for (String keyiterator : ThisnotamodModVariables.MapVariables.get(world).datamap1.getAllKeys()) {
				ThisnotamodModVariables.autoBreakServList.add("" + keyiterator);
			}

			// 🧠 Создаём копию списка серверов
			List<String> remainingServers = new ArrayList<>();
			for (Object obj : ThisnotamodModVariables.autoBreakServList) {
				remainingServers.add(String.valueOf(obj));
			}

			for (int index0 = 0; index0 < (int) ThisnotamodModVariables.MapVariables.get(world).random; index0++) {
				if (remainingServers.isEmpty()) break;

				int index = Mth.nextInt(RandomSource.create(), 0, remainingServers.size() - 1);
				String key = remainingServers.get(index);
				remainingServers.remove(index);

				StringTag tag = ThisnotamodModVariables.MapVariables.get(world).datamap1.get(key) instanceof StringTag _s ? _s : null;

				if (tag != null && tag.getAsString().equals("enabled")) {
					String[] coords = key.split(",");
					List<String> coordsList = new ArrayList<>();
					for (String c : coords) coordsList.add(c.trim());

					ThisnotamodModVariables.servCoordsForAutobreak.clear();
					ThisnotamodModVariables.servCoordsForAutobreak.addAll(coordsList);

					// Копия координат для лямбды
					List<String> coordsCopy = new ArrayList<>(coordsList);

					ThisnotamodMod.queueServerWork(Mth.nextInt(RandomSource.create(), 1, 23999), () -> {
						int _value = 2;

						double x = parse(coordsCopy.get(0));
						double y = parse(coordsCopy.get(1));
						double z = parse(coordsCopy.get(2));

						BlockPos _pos = BlockPos.containing(x, y, z);
						BlockState _bs = votvWorld.getBlockState(_pos);

						if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp &&
							_integerProp.getPossibleValues().contains(_value)) {
							votvWorld.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
						}

						if (ThisnotamodModVariables.MapVariables.get(votvWorld).worldDebug) {
							votvWorld.getServer().getPlayerList().broadcastSystemMessage(
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
	}

	private static double parse(String s) {
		try {
			return Double.parseDouble(s.trim());
		} catch (Exception e) {
			return 0;
		}
	}
}
