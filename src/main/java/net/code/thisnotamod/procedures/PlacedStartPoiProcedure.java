package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.MobSpawnType;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModEntities;
import net.code.thisnotamod.entity.Drone1Entity;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.Comparator;

public class PlacedStartPoiProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		String EndCord = "";
		if (!world.isClientSide()) {
			BlockPos _bp = BlockPos.containing(x, y, z);
			BlockEntity _blockEntity = world.getBlockEntity(_bp);
			BlockState _bs = world.getBlockState(_bp);
			if (_blockEntity != null)
				_blockEntity.getPersistentData().putString("EndPointCoords",
						((("" + (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).EndCoord).replace(")", "")).replace("(", "")));
			if (world instanceof Level _level)
				_level.sendBlockUpdated(_bp, _bs, _bs, 3);
		}
		EndCord = (("" + (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).EndCoord).replace(")", "")).replace("(", "");
		if (world instanceof ServerLevel _level) {
			Entity entityToSpawn = ThisnotamodModEntities.DRONE_1.get().spawn(_level, BlockPos.containing(x, y + 1, z), MobSpawnType.MOB_SUMMONED);
			if (entityToSpawn != null) {
				entityToSpawn.setYRot(world.getRandom().nextFloat() * 360F);
			}
		}
		if (((Entity) world.getEntitiesOfClass(Drone1Entity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
			Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
				return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
			}
		}.compareDistOf(x, y, z)).findFirst().orElse(null)) instanceof Drone1Entity _datEntSetS)
			_datEntSetS.getEntityData().set(Drone1Entity.DATA_StartPoint, ((("" + new Vec3(x, y, z)).replace(")", "")).replace("(", "")));
		if (((Entity) world.getEntitiesOfClass(Drone1Entity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
			Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
				return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
			}
		}.compareDistOf(x, y, z)).findFirst().orElse(null)) instanceof Drone1Entity _datEntSetS)
			_datEntSetS.getEntityData().set(Drone1Entity.DATA_EnndPoint, EndCord);
		ThisnotamodMod.queueServerWork(20, () -> {
			((LivingEntity) ((Entity) world.getEntitiesOfClass(Drone1Entity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
				Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
					return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
				}
			}.compareDistOf(x, y, z)).findFirst().orElse(null))).getAttribute(net.minecraft.world.entity.ai.attributes.Attributes.MOVEMENT_SPEED).setBaseValue(16);
			((LivingEntity) ((Entity) world.getEntitiesOfClass(Drone1Entity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
				Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
					return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
				}
			}.compareDistOf(x, y, z)).findFirst().orElse(null))).getAttribute(net.minecraft.world.entity.ai.attributes.Attributes.FLYING_SPEED).setBaseValue(16);
		});
	}
}
