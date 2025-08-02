package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class SwitchLinkProcedure {
	public static void execute(double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		{
			String _setval = (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).LinkedLamps + "" + (x + "," + y + "," + z + ",");
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.LinkedLamps = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		if (entity instanceof Player _player && !_player.level().isClientSide())
			_player.displayClientMessage(Component.literal("\u00A7a\u041B\u0430\u043C\u043F\u0430 \u043F\u0440\u0438\u0432\u044F\u0437\u0430\u043D\u0430!"), true);
	}
}
