package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class AlarmStopProcedure {
	public static void execute(LevelAccessor world) {
		ThisnotamodModVariables.MapVariables.get(world).Alarm = false;
		ThisnotamodModVariables.MapVariables.get(world).syncData(world);
		AlarmBlinkProcedure.execute(world);
	}
}
