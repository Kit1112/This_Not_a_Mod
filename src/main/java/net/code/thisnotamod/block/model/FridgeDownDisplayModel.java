package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.FridgeDownDisplayItem;

public class FridgeDownDisplayModel extends GeoModel<FridgeDownDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(FridgeDownDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/fridgedown.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(FridgeDownDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/fridgedown.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(FridgeDownDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/light_fridge.png");
	}
}
