package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampMiddleDisplayItem;

public class LampMiddleDisplayModel extends GeoModel<LampMiddleDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampMiddleDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamp_middle.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampMiddleDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamp_middle.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampMiddleDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
