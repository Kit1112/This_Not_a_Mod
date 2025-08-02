package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.WindowARightTDisplayItem;

public class WindowARightTDisplayModel extends GeoModel<WindowARightTDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(WindowARightTDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/windowrighttop.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WindowARightTDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/windowrighttop.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WindowARightTDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/window_tuff.png");
	}
}
