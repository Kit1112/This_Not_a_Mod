package net.code.thisnotamod.procedures;

import net.minecraftforge.registries.ForgeRegistries;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.sounds.SoundSource;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.entity.KerfuOmegaEntity;

public class MeowProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		if (world instanceof Level _level) {
			if (!_level.isClientSide()) {
				_level.playSound(null, BlockPos.containing(x, y, z), ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:kerfu_meow")), SoundSource.HOSTILE, 1, 1);
			} else {
				_level.playLocalSound(x, y, z, ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:kerfu_meow")), SoundSource.HOSTILE, 1, 1, false);
			}
		}
		if (entity instanceof Player _player)
			_player.closeContainer();
		if (world instanceof net.minecraft.world.level.Level _level && !_level.isClientSide()) {
			Entity nearest = world.getEntitiesOfClass(net.code.thisnotamod.entity.KerfuOmegaEntity.class, net.minecraft.world.phys.AABB.ofSize(new net.minecraft.world.phys.Vec3(x, y, z), 3, 3, 3), e -> true).stream()
					.min(java.util.Comparator.comparingDouble(e -> e.distanceToSqr(x, y, z))).orElse(null);
			if (nearest instanceof net.code.thisnotamod.entity.KerfuOmegaEntity mob) {
				mob.getPersistentData().putInt("meow_ticks", 150);
				// На всякий: отключим режимы, чтобы при выходе не пересеклось
				mob.getEntityData().set(KerfuOmegaEntity.DATA_DATA_idle, false);
				mob.getEntityData().set(KerfuOmegaEntity.DATA_patroul, false);
			}
		}
	}
}
