package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class DebugFalseProcProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		{
			boolean _setval = false;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.debug = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		if (entity instanceof Player _player && !_player.level().isClientSide())
			_player.displayClientMessage(Component.literal(
					"\u0412\u044B\u043A\u043B\u044E\u0447\u0435\u043D\u0430 \u043E\u0442\u043B\u0430\u0434\u043A\u0430 \u043A\u043B\u0438\u0435\u043D\u0442\u0441\u043A\u0438\u0445 \u0447\u0430\u0441\u0442\u0435\u0439 \u043C\u043E\u0434\u0430."),
					false);
	}
}
