package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.WindowAleftDDisplayItem;

public class WindowAleftDDisplayModel extends GeoModel<WindowAleftDDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(WindowAleftDDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/windowleftdown.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WindowAleftDDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/windowleftdown.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WindowAleftDDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/window_tuff.png");
	}
}
