package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.Containers;

import java.util.List;
import java.util.ArrayList;

import net.code.thisnotamod.init.ThisnotamodModBlocks;

public class CrTabRdestrProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, BlockState blockstate) {
		BlockPos thisPos = BlockPos.containing(x, y, z);

		// === 1. Найти и удалить левую половину ===
		for (Direction dir : Direction.Plane.HORIZONTAL) {
			BlockPos candidate = thisPos.relative(dir);
			BlockState neighbor = world.getBlockState(candidate);
			if (neighbor.is(ThisnotamodModBlocks.CRAFTING_TABLE_VOTV.get())) {
				world.destroyBlock(candidate, false); // ломаем левую часть
				break;
			}
		}

		// === 2. Выбросить предметы из обеих частей (если остались данные GUI) ===
		if (world instanceof Level _level && !_level.isClientSide()) {
			List<BlockPos> toCheck = new ArrayList<>();
			toCheck.add(thisPos);

			// ищем и добавляем левую половину
			for (Direction dir : Direction.Plane.HORIZONTAL) {
				BlockPos candidate = thisPos.relative(dir);
				BlockState neighbor = world.getBlockState(candidate);
				if (neighbor.is(ThisnotamodModBlocks.CRAFTING_TABLE_VOTV.get())) {
					toCheck.add(candidate);
					break;
				}
			}

			for (BlockPos p : toCheck) {
				BlockEntity be = _level.getBlockEntity(p);
				if (be instanceof net.minecraftforge.items.IItemHandler beInv) {
					for (int i = 0; i < beInv.getSlots(); i++) {
						ItemStack stack = beInv.getStackInSlot(i);
						if (!stack.isEmpty())
							Containers.dropItemStack(_level, p.getX(), p.getY(), p.getZ(), stack);
					}
				}
			}
		}
	}
}
