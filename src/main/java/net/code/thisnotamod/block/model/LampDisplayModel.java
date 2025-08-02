package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampDisplayItem;

public class LampDisplayModel extends GeoModel<LampDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamp.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamp.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
