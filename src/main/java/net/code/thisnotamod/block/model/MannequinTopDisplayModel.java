package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.MannequinTopDisplayItem;

public class MannequinTopDisplayModel extends GeoModel<MannequinTopDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(MannequinTopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/mannequintop.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(MannequinTopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/mannequintop.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(MannequinTopDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/manndr.png");
	}
}
