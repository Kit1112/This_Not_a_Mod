package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class PassLinkProcedure {
	public static void execute(double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		{
			String _setval = (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).linkedDoors + "" + (x + "," + y + "," + z + ",");
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.linkedDoors = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		final String _txt = "Дверь привязана!";
		net.minecraft.world.level.Level _lvl = entity.level();
		if (_lvl != null && !_lvl.isClientSide()) {
			net.code.thisnotamod.TipApi.show(_lvl, entity, _txt, new net.minecraft.world.item.ItemStack(net.code.thisnotamod.init.ThisnotamodModItems.INFOICON.get()), new net.minecraft.resources.ResourceLocation("thisnotamod", "hint"));
		}
	}
}
