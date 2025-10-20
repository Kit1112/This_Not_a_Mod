package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.entity.KerfuOmegaEntity;

import java.util.Comparator;

public class OKerfoffProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		if (!((Entity) world.getEntitiesOfClass(KerfuOmegaEntity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
			Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
				return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
			}
		}.compareDistOf(x, y, z)).findFirst().orElse(null)).level().isClientSide())
			((Entity) world.getEntitiesOfClass(KerfuOmegaEntity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
				Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
					return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
				}
			}.compareDistOf(x, y, z)).findFirst().orElse(null)).discard();
		if (world instanceof net.minecraft.world.level.Level _level && !_level.isClientSide()) {
			net.minecraft.world.item.ItemStack stack = new net.minecraft.world.item.ItemStack(net.code.thisnotamod.init.ThisnotamodModItems.KERFU_BLOCK.get()); // <-- РІР°С€ РїСЂРµРґРјРµС‚
			stack.setCount(1); // РєРѕР»РёС‡РµСЃС‚РІРѕ
			net.minecraft.world.entity.item.ItemEntity itemEntity = new net.minecraft.world.entity.item.ItemEntity(_level, x + 0.5, y + 0.5, z + 0.5, stack);
			itemEntity.setDefaultPickUpDelay(); // РёР»Рё entity.setPickUpDelay(10);
			_level.addFreshEntity(itemEntity);
		}
		if (entity instanceof Player _player)
			_player.closeContainer();
	}
}
