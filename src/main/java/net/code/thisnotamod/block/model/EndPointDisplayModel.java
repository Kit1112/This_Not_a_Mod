package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.EndPointDisplayItem;

public class EndPointDisplayModel extends GeoModel<EndPointDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(EndPointDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/default.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(EndPointDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/default.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(EndPointDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/default_block_tex.png");
	}
}
