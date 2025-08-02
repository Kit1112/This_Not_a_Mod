package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.VentCornerHorizontalDisplayItem;

public class VentCornerHorizontalDisplayModel extends GeoModel<VentCornerHorizontalDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(VentCornerHorizontalDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/vent_corner_horizontal.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VentCornerHorizontalDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/vent_corner_horizontal.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VentCornerHorizontalDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/vent_corner.png");
	}
}
