
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.entity.EntityAttributeCreationEvent;

import net.minecraft.world.entity.MobCategory;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.entity.MannequinEntity;
import net.code.thisnotamod.entity.KerfuOmegaEntity;
import net.code.thisnotamod.entity.KerfuEntity;
import net.code.thisnotamod.ThisnotamodMod;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class ThisnotamodModEntities {
	public static final DeferredRegister<EntityType<?>> REGISTRY = DeferredRegister.create(ForgeRegistries.ENTITY_TYPES, ThisnotamodMod.MODID);
	public static final RegistryObject<EntityType<KerfuEntity>> KERFU = register("kerfu",
			EntityType.Builder.<KerfuEntity>of(KerfuEntity::new, MobCategory.MISC).setShouldReceiveVelocityUpdates(true).setTrackingRange(64).setUpdateInterval(3).setCustomClientFactory(KerfuEntity::new).fireImmune().sized(0.6f, 1.8f));
	public static final RegistryObject<EntityType<KerfuOmegaEntity>> KERFU_OMEGA = register("kerfu_omega", EntityType.Builder.<KerfuOmegaEntity>of(KerfuOmegaEntity::new, MobCategory.MISC).setShouldReceiveVelocityUpdates(true).setTrackingRange(64)
			.setUpdateInterval(3).setCustomClientFactory(KerfuOmegaEntity::new).fireImmune().sized(0.6f, 1.8f));
	public static final RegistryObject<EntityType<MannequinEntity>> MANNEQUIN = register("mannequin",
			EntityType.Builder.<MannequinEntity>of(MannequinEntity::new, MobCategory.MONSTER).setShouldReceiveVelocityUpdates(true).setTrackingRange(64).setUpdateInterval(3).setCustomClientFactory(MannequinEntity::new)

					.sized(0.6f, 1.8f));

	private static <T extends Entity> RegistryObject<EntityType<T>> register(String registryname, EntityType.Builder<T> entityTypeBuilder) {
		return REGISTRY.register(registryname, () -> (EntityType<T>) entityTypeBuilder.build(registryname));
	}

	@SubscribeEvent
	public static void init(FMLCommonSetupEvent event) {
		event.enqueueWork(() -> {
			KerfuEntity.init();
			KerfuOmegaEntity.init();
			MannequinEntity.init();
		});
	}

	@SubscribeEvent
	public static void registerAttributes(EntityAttributeCreationEvent event) {
		event.put(KERFU.get(), KerfuEntity.createAttributes().build());
		event.put(KERFU_OMEGA.get(), KerfuOmegaEntity.createAttributes().build());
		event.put(MANNEQUIN.get(), MannequinEntity.createAttributes().build());
	}
}
