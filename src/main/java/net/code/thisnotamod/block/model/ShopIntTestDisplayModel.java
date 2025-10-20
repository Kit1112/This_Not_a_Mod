package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.ShopIntTestDisplayItem;

public class ShopIntTestDisplayModel extends GeoModel<ShopIntTestDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(ShopIntTestDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/default.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(ShopIntTestDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/default.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(ShopIntTestDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/default_block_tex.png");
	}
}
