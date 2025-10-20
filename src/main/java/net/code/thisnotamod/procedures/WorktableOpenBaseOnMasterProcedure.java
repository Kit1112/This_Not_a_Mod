package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.inventory.Slot;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.network.chat.Component;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraftforge.network.NetworkHooks;
import io.netty.buffer.Unpooled;

import net.code.thisnotamod.world.inventory.CraftingTableBaseInterfaceMenu;
import net.code.thisnotamod.init.ThisnotamodModBlocks;

public class WorktableOpenBaseOnMasterProcedure {

    // вызывай из триггера "When block right-clicked" обоих половин
    public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
        if (!(entity instanceof ServerPlayer sp)) return;

        BlockPos clicked = BlockPos.containing(x, y, z);
        BlockPos master = resolveMaster(world, clicked);

        // если не нашли — откроем на кликнутой (на всякий случай)
        if (master == null) master = clicked;

        BlockPos finalPos = master;
        NetworkHooks.openScreen(sp, new net.minecraft.world.MenuProvider() {
            @Override public Component getDisplayName() {
                return Component.literal("CraftingTableBaseInterface");
            }
            @Override public AbstractContainerMenu createMenu(int id, Inventory inv, Player p) {
                return new CraftingTableBaseInterfaceMenu(
                    id, inv,
                    new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(finalPos)
                );
            }
        }, finalPos);
    }

    // мастер — это левая половина (thisnotamod:crafting_table_votv)
    private static BlockPos resolveMaster(LevelAccessor world, BlockPos pos) {
        BlockState st = world.getBlockState(pos);
        // если кликнули по левой — это и есть мастер
        if (st.is(ThisnotamodModBlocks.CRAFTING_TABLE_VOTV.get())) return pos;

        // иначе ищем рядом слева/справа/вперёд/назад левую
        for (Direction d : Direction.Plane.HORIZONTAL) {
            BlockPos p = pos.relative(d);
            BlockState s = world.getBlockState(p);
            if (s.is(ThisnotamodModBlocks.CRAFTING_TABLE_VOTV.get())) return p;
        }
        return null;
    }
}
