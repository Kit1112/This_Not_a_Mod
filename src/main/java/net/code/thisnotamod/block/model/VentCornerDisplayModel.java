package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.VentCornerDisplayItem;

public class VentCornerDisplayModel extends GeoModel<VentCornerDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(VentCornerDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/vent_corner.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VentCornerDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/vent_corner.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VentCornerDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/vent_corner.png");
	}
}
