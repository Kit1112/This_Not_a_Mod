package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.Vec2;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.CommandSource;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.CustomTipOverlay;

public class CleanProcedureProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		if (world instanceof ServerLevel _level)
			_level.getServer().getCommands().performPrefixedCommand(new CommandSourceStack(CommandSource.NULL, new Vec3(x, y, z), Vec2.ZERO, _level, 4, "", Component.literal(""), _level.getServer(), null).withSuppressedOutput(),
					"execute in minecraft:overworld run weather clear");
		if (entity instanceof LivingEntity _entity)
			_entity.removeEffect(MobEffects.DOLPHINS_GRACE);
		Minecraft mc = Minecraft.getInstance();
		if (mc != null && mc.level != null && mc.player != null) {
			CustomTipOverlay.queueTip(Component.literal("Установлена погода: чистое небо."), new ItemStack(ThisnotamodModItems.INFOICON.get()), new ResourceLocation("thisnotamod", "hint"));
		}
	}
}
