package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampRoundMiddleDisplayItem;

public class LampRoundMiddleDisplayModel extends GeoModel<LampRoundMiddleDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampRoundMiddleDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamproundmiddle.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampRoundMiddleDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamproundmiddle.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampRoundMiddleDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
	}
}
