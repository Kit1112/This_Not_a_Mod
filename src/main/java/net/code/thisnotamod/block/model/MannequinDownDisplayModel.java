package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.MannequinDownDisplayItem;

public class MannequinDownDisplayModel extends GeoModel<MannequinDownDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(MannequinDownDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/mannequindown.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(MannequinDownDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/mannequindown.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(MannequinDownDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/manndr.png");
	}
}
