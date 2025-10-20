package net.code.thisnotamod.procedures;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.inventory.Slot;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.nbt.ByteTag;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModBlocks;

import java.util.function.Supplier;
import java.util.Map;

public class KerfInvSlot2ProcProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		if ((entity instanceof Player _plrSlotItem && _plrSlotItem.containerMenu instanceof Supplier _splr && _splr.get() instanceof Map _slt ? ((Slot) _slt.get(2)).getItem() : ItemStack.EMPTY).getItem() == ThisnotamodModBlocks.KERFU_HEAD.get()
				.asItem()) {
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).setTag(0, ByteTag.valueOf(true));
		} else {
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).setTag(0, ByteTag.valueOf(false));
		}
		KerfuCraftRecalcOutputProcedure.execute(entity);
	}
}
