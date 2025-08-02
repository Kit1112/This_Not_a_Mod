package net.code.thisnotamod.procedures;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.entity.KerfuOmegaEntity;
import net.code.thisnotamod.entity.KerfuEntity;
import net.code.thisnotamod.ThisnotamodMod;

public class EntityHiyDoorTProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, BlockState blockstate, Entity entity) {
		if (entity == null)
			return;
		if ((entity instanceof KerfuEntity || entity instanceof KerfuOmegaEntity) && (blockstate.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip3 ? blockstate.getValue(_getip3) : -1) == 1) {
			DoorDopenProcedure.execute(world, x, y, z, blockstate);
			ThisnotamodMod.queueServerWork(100, () -> {
				DoorDcloseProcedure.execute(world, x, y, z, blockstate);
			});
		}
	}
}
