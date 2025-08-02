package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.WindowAleftTDisplayItem;

public class WindowAleftTDisplayModel extends GeoModel<WindowAleftTDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(WindowAleftTDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/windowlefttop.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WindowAleftTDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/windowlefttop.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WindowAleftTDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/window_tuff.png");
	}
}
