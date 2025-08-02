package net.code.thisnotamod.entity.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.entity.KerfuOmegaEntity;

public class KerfuOmegaModel extends GeoModel<KerfuOmegaEntity> {
	@Override
	public ResourceLocation getAnimationResource(KerfuOmegaEntity entity) {
		return new ResourceLocation("thisnotamod", "animations/omega_kerfu.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(KerfuOmegaEntity entity) {
		return new ResourceLocation("thisnotamod", "geo/omega_kerfu.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(KerfuOmegaEntity entity) {
		return new ResourceLocation("thisnotamod", "textures/entities/" + entity.getTexture() + ".png");
	}

}
