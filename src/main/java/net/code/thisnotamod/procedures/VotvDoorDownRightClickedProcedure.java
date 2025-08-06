package net.code.thisnotamod.procedures;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.init.ThisnotamodModBlocks;
import net.code.thisnotamod.ThisnotamodMod;

public class VotvDoorDownRightClickedProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, BlockState blockstate, Entity entity) {
		if (entity == null)
			return;
		if ((entity instanceof LivingEntity _livEnt ? _livEnt.getMainHandItem() : ItemStack.EMPTY).getItem() == ThisnotamodModBlocks.PASSLOCK_B.get().asItem()) {
			PassLinkProcedure.execute(x, y, z, entity);
		} else {
			if ((blockstate.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip3 ? blockstate.getValue(_getip3) : -1) == 1) {
				DoorDopenProcedure.execute(world, x, y, z, blockstate);
				ThisnotamodMod.queueServerWork(100, () -> {
					DoorDcloseProcedure.execute(world, x, y, z, blockstate);
				});
			} else if ((blockstate.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip6 ? blockstate.getValue(_getip6) : -1) == 3) {
				DoorDcloseProcedure.execute(world, x, y, z, blockstate);
			}
		}
	}
}
