package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class ServDdestrProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z) {
		world.destroyBlock(BlockPos.containing(x, y + 1, z), false);
		ThisnotamodModVariables.MapVariables.get(world).datamap1.remove(((("" + new Vec3(x, (y + 1), z)).replace(")", "")).replace("(", "")));
	}
}
