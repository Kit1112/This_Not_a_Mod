package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;

/**
 * ВАЖНО: без клиентских классов. Показ подсказки через TipApi (работает и на сервере, и на клиенте).
 */
public class AllowDebugFalseProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;

		// обновляем флаг
		{
			boolean _setval = false;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.AllowDebug = _setval;
				capability.syncPlayerVariables(entity);
			});
		}

		// снимаем эффект
		if (entity instanceof LivingEntity _entity)
			_entity.removeEffect(MobEffects.DOLPHINS_GRACE);

		// world из сущности (без изменения сигнатуры процедуры)
		final LevelAccessor world = entity.level();

		// подсказка
		net.code.thisnotamod.TipApi.show(
				world,
				entity,
				"Отладка отключена.",
				new ItemStack(ThisnotamodModItems.INFOICON.get()),
				new ResourceLocation("thisnotamod", "hint")
		);
	}
}
