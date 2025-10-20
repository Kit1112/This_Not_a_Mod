package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.Containers;
import net.minecraft.world.item.ItemStack;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;

import net.minecraftforge.common.capabilities.ForgeCapabilities;
import net.minecraftforge.items.IItemHandler;

import net.code.thisnotamod.init.ThisnotamodModBlocks;

public class WorktableDropAndBreakProcedure {
    private static boolean inProgress = false;

    public static void execute(LevelAccessor world, double x, double y, double z) {
        if (inProgress) return;
        if (!(world instanceof Level level)) return;

        BlockPos clicked = BlockPos.containing(x, y, z);
        BlockPos master = resolveMaster(world, clicked);
        if (master == null) return;

        // пара: любая соседняя половина (левая или правая), кроме самого мастера
        BlockPos mate = null;
        for (Direction d : Direction.Plane.HORIZONTAL) {
            BlockPos p = master.relative(d);
            BlockState s = level.getBlockState(p);
            if (p.equals(master)) continue;
            if (s.is(ThisnotamodModBlocks.CRAFTING_TABLE_VOTV.get()) ||
                s.is(ThisnotamodModBlocks.CRAFTING_TABLE_R.get())) {
                mate = p; break;
            }
        }

        inProgress = true;
        try {
            // 1) дропаем содержимое ИЗ МАСТЕРА (общий инвентарь)
            BlockEntity be = level.getBlockEntity(master);
            if (be != null) {
                be.getCapability(ForgeCapabilities.ITEM_HANDLER, null).ifPresent((IItemHandler h) -> {
                    for (int i = 0; i < h.getSlots(); i++) {
                        ItemStack stack = h.extractItem(i, h.getStackInSlot(i).getCount(), false);
                        if (!stack.isEmpty()) {
                            Containers.dropItemStack(level,
                                    master.getX() + 0.5, master.getY() + 0.5, master.getZ() + 0.5,
                                    stack);
                        }
                    }
                });
            }

            // 2) ломаем мастер с дропом (его лут-таблица, если есть)
            level.destroyBlock(master, true);

            // 3) ломаем вторую половину без дропа (чтобы не удваивать)
            if (mate != null) level.destroyBlock(mate, false);

        } finally {
            inProgress = false;
        }
    }

    private static BlockPos resolveMaster(LevelAccessor world, BlockPos pos) {
        BlockState st = world.getBlockState(pos);
        if (st.is(ThisnotamodModBlocks.CRAFTING_TABLE_VOTV.get())) return pos;
        for (Direction d : Direction.Plane.HORIZONTAL) {
            BlockPos p = pos.relative(d);
            if (world.getBlockState(p).is(ThisnotamodModBlocks.CRAFTING_TABLE_VOTV.get())) return p;
        }
        return null;
    }
}
