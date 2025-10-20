package net.code.thisnotamod.entity.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.entity.Drone1Entity;

public class Drone1Model extends GeoModel<Drone1Entity> {
	@Override
	public ResourceLocation getAnimationResource(Drone1Entity entity) {
		return new ResourceLocation("thisnotamod", "animations/drome.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(Drone1Entity entity) {
		return new ResourceLocation("thisnotamod", "geo/drome.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(Drone1Entity entity) {
		return new ResourceLocation("thisnotamod", "textures/entities/" + entity.getTexture() + ".png");
	}

}
