package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.nbt.StringTag;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.entity.KerfuOmegaEntity;
import net.code.thisnotamod.CustomTipOverlay;

import java.util.Comparator;

public class FindBrokenServersProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		// Предзагрузка звуков (ТОЛЬКО КЛИЕНТ)
		if (world instanceof net.minecraft.world.level.Level _lvl && _lvl.isClientSide()) {
			net.minecraft.client.Minecraft _mc = net.minecraft.client.Minecraft.getInstance();
			if (_mc != null) {
				_mc.execute(() -> {
					try {
						net.minecraft.sounds.SoundEvent _s1 = net.minecraft.core.registries.BuiltInRegistries.SOUND_EVENT.get(new net.minecraft.resources.ResourceLocation("thisnotamod", "notif_warning"));
						net.minecraft.sounds.SoundEvent _s2 = net.minecraft.core.registries.BuiltInRegistries.SOUND_EVENT.get(new net.minecraft.resources.ResourceLocation("thisnotamod", "hint"));
						if (_s1 != null)
							net.minecraft.client.resources.sounds.SimpleSoundInstance.forUI(_s1, 0.0F);
						if (_s2 != null)
							net.minecraft.client.resources.sounds.SimpleSoundInstance.forUI(_s2, 0.0F);
					} catch (Exception ignored) {
					}
				});
			}
		}
		if (world instanceof net.minecraft.world.level.Level _lvlS && !_lvlS.isClientSide()) {
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
		}
		// Клиентская подсказка без гонок: решаем по datamap1, а не по DATA_serverList
		if (world instanceof net.minecraft.world.level.Level _lvlC && _lvlC.isClientSide()) {
			boolean hasDisabled = false;
			for (String keyiterator2 : ThisnotamodModVariables.MapVariables.get(world).datamap1.getAllKeys()) {
				String v = (ThisnotamodModVariables.MapVariables.get(world).datamap1.get(keyiterator2)) instanceof net.minecraft.nbt.StringTag _s ? _s.getAsString() : "";
				if ("disabled".equals(v)) {
					hasDisabled = true;
					break;
				}
			}
			net.minecraft.client.Minecraft mc = net.minecraft.client.Minecraft.getInstance();
			if (mc != null && mc.level != null && mc.player != null) {
				if (hasDisabled) {
					CustomTipOverlay.queueTip(Component.literal("Бегу ремонтировать сервера!"), new ItemStack(ThisnotamodModItems.INFOICON.get()), new ResourceLocation("thisnotamod", "hint"));
				} else {
					CustomTipOverlay.queueTip(Component.literal("Нечего ремонтировать!"), new ItemStack(ThisnotamodModItems.WARNINGICON.get()), new ResourceLocation("thisnotamod", "notif_warning"));
				}
			}
		}
		if (entity instanceof Player _player)
			_player.closeContainer();
	}
}
