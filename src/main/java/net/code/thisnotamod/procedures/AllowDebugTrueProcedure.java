package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.ThisnotamodMod;

/**
 * ВАЖНО: без клиентских классов. Показ подсказки через TipApi (работает и на сервере, и на клиенте).
 */
public class AllowDebugTrueProcedure {
	public static void execute(LevelAccessor world, Entity entity) {
		if (entity == null)
			return;

		// записываем флаг
		{
			boolean _setval = true;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.AllowDebug = _setval;
				capability.syncPlayerVariables(entity);
			});
		}

		// снимаем эффект
		if (entity instanceof LivingEntity _entity)
			_entity.removeEffect(MobEffects.DOLPHINS_GRACE);

		// подсказка сразу
		net.code.thisnotamod.TipApi.show(
				world,
				entity,
				"Отладка включена.",
				new ItemStack(ThisnotamodModItems.INFOICON.get()),
				new ResourceLocation("thisnotamod", "hint")
		);

		// подсказка через 20 тиков (на сервере сработает отправка S2C)
		ThisnotamodMod.queueServerWork(20, () -> {
			net.code.thisnotamod.TipApi.show(
					world,
					entity,
					"Клавиша отладки по умолчанию - DELETE",
					new ItemStack(ThisnotamodModItems.INFOICON.get()),
					new ResourceLocation("thisnotamod", "hint")
			);
		});
	}
}
