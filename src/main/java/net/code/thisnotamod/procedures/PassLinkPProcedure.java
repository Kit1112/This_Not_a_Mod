package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;

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
			if (entity instanceof Player _player && !_player.level().isClientSide())
				_player.displayClientMessage(Component.literal("\u00A7a\u0417\u0430\u043C\u043E\u043A \u043F\u0440\u0438\u0432\u044F\u0437\u0430\u043D!"), true);
		} else {
			if (entity instanceof Player _player && !_player.level().isClientSide())
				_player.displayClientMessage(Component.literal("\u00A74\u041C\u043E\u0436\u043D\u043E \u043F\u0440\u0438\u0432\u044F\u0437\u0430\u0442\u044C \u0442\u043E\u043B\u044C\u043A\u043E 1 \u0437\u0430\u043C\u043E\u043A!"), true);
		}
	}
}
