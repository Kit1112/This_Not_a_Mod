package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.PanelsV2DisplayItem;

public class PanelsV2DisplayModel extends GeoModel<PanelsV2DisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(PanelsV2DisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/panels.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(PanelsV2DisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/panels.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(PanelsV2DisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/panels.png");
	}
}
