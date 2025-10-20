package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModBlocks;

public class EndPoiRBMProcedure {
	public static void execute(double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		if ((entity instanceof LivingEntity _livEnt ? _livEnt.getMainHandItem() : ItemStack.EMPTY).getItem() == ThisnotamodModBlocks.START_POINT.get().asItem()) {
			if (entity instanceof Player _player) {
				Vec3 _setval = new Vec3(x, y, z);
				_player.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.EndCoord = _setval;
					capability.syncPlayerVariables(_player);
				});
			}
			if (entity instanceof Player _player && !_player.level().isClientSide())
				_player.displayClientMessage(Component.literal(("\u0411\u043B\u043E\u043A \u0432 "
						+ ("" + (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).EndCoord)
						+ " \u0442\u0435\u043F\u0435\u0440\u044C \u044F\u0432\u043B\u044F\u0435\u0442\u0441\u044F \u043A\u043E\u043D\u0435\u0447\u043D\u043E\u0439 \u0442\u043E\u0447\u043A\u043E\u0439 \u043C\u0430\u0440\u0448\u0440\u0443\u0442\u0430 \u0434\u0440\u043E\u043D\u0430!")),
						true);
		}
	}
}
