package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;

public class AlarmTrueProcedure {
	public static void execute(LevelAccessor world, Entity entity) {
		if (entity == null)
			return;
		AlarmstartProcedure.execute(world);
		if (entity instanceof Player _player && !_player.level().isClientSide())
			_player.displayClientMessage(Component.literal("\u0422\u0440\u0435\u0432\u043E\u0433\u0430 \u0437\u0430\u043F\u0443\u0449\u0435\u043D\u0430!"), false);
	}
}
