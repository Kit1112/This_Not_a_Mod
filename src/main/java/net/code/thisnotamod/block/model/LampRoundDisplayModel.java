package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampRoundDisplayItem;

public class LampRoundDisplayModel extends GeoModel<LampRoundDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampRoundDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lampround.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampRoundDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lampround.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampRoundDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
	}
}
