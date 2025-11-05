package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class PassLinkPProcedure {
	public static void execute(double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		if (((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).linkedPasslocks).equals("")) {
			{
				String _setval = (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).linkedPasslocks + "" + (x + "," + y + "," + z + ",");
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.linkedPasslocks = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			final String _txt = "Замок привязан!";
			net.minecraft.world.level.Level _lvl = entity.level();
			if (_lvl != null && !_lvl.isClientSide()) {
				net.code.thisnotamod.TipApi.show(_lvl, entity, _txt, new net.minecraft.world.item.ItemStack(net.code.thisnotamod.init.ThisnotamodModItems.INFOICON.get()), new net.minecraft.resources.ResourceLocation("thisnotamod", "hint"));
			}
		} else {
			final String _txt = "Можно привязать только 1 замок!";
			net.minecraft.world.level.Level _lvl = entity.level();
			if (_lvl != null && !_lvl.isClientSide()) {
				net.code.thisnotamod.TipApi.show(_lvl, entity, _txt, new net.minecraft.world.item.ItemStack(net.code.thisnotamod.init.ThisnotamodModItems.ERRORICON.get()), new net.minecraft.resources.ResourceLocation("thisnotamod", "notif_error"));
			}
		}
	}
}
