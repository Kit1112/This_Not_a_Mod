package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.level.LevelAccessor;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class WarnLampDestrProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z) {
		ThisnotamodModVariables.MapVariables.get(world).WarnLamps.remove(((("" + new Vec3(x, y, z)).replace(")", "")).replace("(", "")));
	}
}
