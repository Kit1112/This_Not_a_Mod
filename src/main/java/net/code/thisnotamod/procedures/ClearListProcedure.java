package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class ClearListProcedure {
	public static void execute(LevelAccessor world, Entity entity) {
		if (entity == null)
			return;
		double enabledCount = 0;
		String currentValue = "";
		if (entity instanceof Player _player && !_player.level().isClientSide())
			_player.displayClientMessage(Component.literal(("\u0418\u0437 \u0441\u043F\u0438\u0441\u043A\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u043E\u0432 \u0443\u0434\u0430\u043B\u0435\u043D\u043E "
					+ ThisnotamodModVariables.MapVariables.get(world).datamap1.size() + " \u0437\u0430\u043F\u0438\u0441\u0435\u0439.")), false);
		for (String keyiterator : ThisnotamodModVariables.MapVariables.get(world).datamap1.getAllKeys()) {
			ThisnotamodModVariables.MapVariables.get(world).datamap1.remove(keyiterator);
		}
	}
}
