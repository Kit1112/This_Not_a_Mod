package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.Entity;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.CustomTipOverlay;

public class DebugAllFalseProcedure {
	public static void execute(LevelAccessor world, Entity entity) {
		if (entity == null)
			return;
		{
			boolean _setval = false;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.debug = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		ThisnotamodModVariables.MapVariables.get(world).worldDebug = false;
		ThisnotamodModVariables.MapVariables.get(world).syncData(world);
		Minecraft mc = Minecraft.getInstance();
		if (mc != null && mc.level != null && mc.player != null) {
			CustomTipOverlay.queueTip(Component.literal("Выключена отладка всех частей мода."), new ItemStack(ThisnotamodModItems.INFOICON.get()), new ResourceLocation("thisnotamod", "hint"));
		}
	}
}
