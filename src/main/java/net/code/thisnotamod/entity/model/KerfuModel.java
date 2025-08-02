package net.code.thisnotamod.entity.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.entity.KerfuEntity;

public class KerfuModel extends GeoModel<KerfuEntity> {
	@Override
	public ResourceLocation getAnimationResource(KerfuEntity entity) {
		return new ResourceLocation("thisnotamod", "animations/kerfu.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(KerfuEntity entity) {
		return new ResourceLocation("thisnotamod", "geo/kerfu.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(KerfuEntity entity) {
		return new ResourceLocation("thisnotamod", "textures/entities/" + entity.getTexture() + ".png");
	}

}
