package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampRoundUpMiddleDisplayItem;

public class LampRoundUpMiddleDisplayModel extends GeoModel<LampRoundUpMiddleDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampRoundUpMiddleDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamproundupmiddle.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampRoundUpMiddleDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamproundupmiddle.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampRoundUpMiddleDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
	}
}
