package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.StartPointDisplayItem;

public class StartPointDisplayModel extends GeoModel<StartPointDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(StartPointDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/default.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(StartPointDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/default.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(StartPointDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/default_block_tex.png");
	}
}
