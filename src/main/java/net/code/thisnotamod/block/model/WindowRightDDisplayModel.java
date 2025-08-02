package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.WindowRightDDisplayItem;

public class WindowRightDDisplayModel extends GeoModel<WindowRightDDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(WindowRightDDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/windowtightdown.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WindowRightDDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/windowtightdown.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WindowRightDDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/window_andesit.png");
	}
}
