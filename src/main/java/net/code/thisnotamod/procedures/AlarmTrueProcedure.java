package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.CustomTipOverlay;

public class AlarmTrueProcedure {
	public static void execute(LevelAccessor world, Entity entity) {
		if (entity == null)
			return;
		AlarmstartProcedure.execute(world);
		Minecraft mc = Minecraft.getInstance();
		if (mc != null && mc.level != null && mc.player != null) {
			CustomTipOverlay.queueTip(Component.literal("Тревога запущена!"), new ItemStack(ThisnotamodModItems.INFOICON.get()), new ResourceLocation("thisnotamod", "hint"));
		}
		if (entity instanceof LivingEntity _entity)
			_entity.removeEffect(MobEffects.DOLPHINS_GRACE);
	}
}
