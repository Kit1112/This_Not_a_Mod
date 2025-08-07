package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;
import net.minecraft.nbt.StringTag;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.entity.KerfuOmegaEntity;

import java.util.Comparator;

public class FindBrokenServersProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z) {
		if (((Entity) world.getEntitiesOfClass(KerfuOmegaEntity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
			Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
				return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
			}
		}.compareDistOf(x, y, z)).findFirst().orElse(null)) instanceof KerfuOmegaEntity _datEntSetS)
			_datEntSetS.getEntityData().set(KerfuOmegaEntity.DATA_serverList, "");
		for (String keyiterator : ThisnotamodModVariables.MapVariables.get(world).datamap1.getAllKeys()) {
			if (((ThisnotamodModVariables.MapVariables.get(world).datamap1.get(keyiterator)) instanceof StringTag _stringTag ? _stringTag.getAsString() : "").equals("disabled")) {
				if (((Entity) world.getEntitiesOfClass(KerfuOmegaEntity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
					Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
						return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
					}
				}.compareDistOf(x, y, z)).findFirst().orElse(null)) instanceof KerfuOmegaEntity _datEntSetS)
					_datEntSetS.getEntityData().set(KerfuOmegaEntity.DATA_serverList, ((((Entity) world.getEntitiesOfClass(KerfuOmegaEntity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
						Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
							return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
						}
					}.compareDistOf(x, y, z)).findFirst().orElse(null)) instanceof KerfuOmegaEntity _datEntS ? _datEntS.getEntityData().get(KerfuOmegaEntity.DATA_serverList) : "") + "(" + keyiterator + ")"));
			}
		}
		if (!world.isClientSide() && world.getServer() != null)
			world.getServer().getPlayerList().broadcastSystemMessage(Component.literal((((Entity) world.getEntitiesOfClass(KerfuOmegaEntity.class, AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true).stream().sorted(new Object() {
				Comparator<Entity> compareDistOf(double _x, double _y, double _z) {
					return Comparator.comparingDouble(_entcnd -> _entcnd.distanceToSqr(_x, _y, _z));
				}
			}.compareDistOf(x, y, z)).findFirst().orElse(null)) instanceof KerfuOmegaEntity _datEntS ? _datEntS.getEntityData().get(KerfuOmegaEntity.DATA_serverList) : "")), false);
	}
}
