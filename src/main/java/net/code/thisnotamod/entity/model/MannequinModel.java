package net.code.thisnotamod.entity.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.entity.MannequinEntity;

public class MannequinModel extends GeoModel<MannequinEntity> {
	@Override
	public ResourceLocation getAnimationResource(MannequinEntity entity) {
		return new ResourceLocation("thisnotamod", "animations/mannequinentity.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(MannequinEntity entity) {
		return new ResourceLocation("thisnotamod", "geo/mannequinentity.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(MannequinEntity entity) {
		return new ResourceLocation("thisnotamod", "textures/entities/" + entity.getTexture() + ".png");
	}

}
