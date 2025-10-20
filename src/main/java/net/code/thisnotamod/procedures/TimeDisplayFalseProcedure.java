package net.code.thisnotamod.procedures;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.Entity;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.CustomTipOverlay;

public class TimeDisplayFalseProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		{
			boolean _setval = false;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.TimeDisplay = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		Minecraft mc = Minecraft.getInstance();
		if (mc != null && mc.level != null && mc.player != null) {
			CustomTipOverlay.queueTip(Component.literal("Выключено отображение текущего времени в тиках."), new ItemStack(ThisnotamodModItems.INFOICON.get()), new ResourceLocation("thisnotamod", "hint"));
		}
	}
}
