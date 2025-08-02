package net.code.thisnotamod.procedures;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.eventbus.api.Event;
import net.minecraftforge.event.TickEvent;

import net.minecraft.world.level.LevelAccessor;

import javax.annotation.Nullable;

@Mod.EventBusSubscriber
public class TimeProcProcedure {
	@SubscribeEvent
	public static void onWorldTick(TickEvent.LevelTickEvent event) {
		if (event.phase == TickEvent.Phase.END) {
			execute(event, event.level);
		}
	}

	public static String execute(LevelAccessor world) {
		return execute(null, world);
	}

	private static String execute(@Nullable Event event, LevelAccessor world) {
		double time = 0;
		String timeSTR = "";
		timeSTR = "\u23F0: " + world.dayTime() % 24000;
		return timeSTR;
	}
}
