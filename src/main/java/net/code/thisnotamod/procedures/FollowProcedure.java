package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.entity.KerfuOmegaEntity;
import net.code.thisnotamod.CustomTipOverlay;

import java.util.Comparator;

public class FollowProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		if (((Entity) world.getEntitiesOfClass(KerfuOmegaEntity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
			Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
				return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
			}
		}.compareDistOf(x, y, z)).findFirst().orElse(null)) instanceof KerfuOmegaEntity _datEntSetL)
			_datEntSetL.getEntityData().set(KerfuOmegaEntity.DATA_patroul, false);
		if (((Entity) world.getEntitiesOfClass(KerfuOmegaEntity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
			Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
				return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
			}
		}.compareDistOf(x, y, z)).findFirst().orElse(null)) instanceof KerfuOmegaEntity _datEntSetL)
			_datEntSetL.getEntityData().set(KerfuOmegaEntity.DATA_DATA_idle, false);
		if (entity instanceof Player _player)
			_player.closeContainer();
		CustomTipOverlay.queueTip(
    Component.literal("Следую за вами!"),
    new ItemStack(ThisnotamodModItems.INFOICON.get()),
    new ResourceLocation("thisnotamod", "hint")
);

	}
}
