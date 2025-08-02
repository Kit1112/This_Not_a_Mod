package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class AlarmFalseProcedure {
	public static void execute(LevelAccessor world, Entity entity) {
		if (entity == null)
			return;
		if (entity instanceof Player _player && !_player.level().isClientSide())
			_player.displayClientMessage(Component.literal("\u0422\u0440\u0435\u0432\u043E\u0433\u0430 \u043E\u0441\u0442\u0430\u043D\u043E\u0432\u043B\u0435\u043D\u0430!"), false);
		ThisnotamodModVariables.MapVariables.get(world).AlarmSoundIsPlayed = false;
		ThisnotamodModVariables.MapVariables.get(world).syncData(world);
		AlarmStopProcedure.execute(world);
	}
}
