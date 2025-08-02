package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampRoundUpDisplayItem;

public class LampRoundUpDisplayModel extends GeoModel<LampRoundUpDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampRoundUpDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamproundup.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampRoundUpDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamproundup.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampRoundUpDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
	}
}
