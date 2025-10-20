package net.code.thisnotamod.procedures;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.inventory.Slot;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.nbt.ByteTag;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;

import java.util.function.Supplier;
import java.util.Map;

public class KerfInvSlot6ProcProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		if ((entity instanceof Player _plrSlotItem && _plrSlotItem.containerMenu instanceof Supplier _splr && _splr.get() instanceof Map _slt ? ((Slot) _slt.get(6)).getItem() : ItemStack.EMPTY).getItem() == ThisnotamodModItems.KERFU_LEG.get()) {
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).setTag(4, ByteTag.valueOf(true));
		} else {
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).setTag(4, ByteTag.valueOf(false));
		}
		KerfuCraftRecalcOutputProcedure.execute(entity);
	}
}
