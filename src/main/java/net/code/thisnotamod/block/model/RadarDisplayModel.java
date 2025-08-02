package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.RadarDisplayItem;

public class RadarDisplayModel extends GeoModel<RadarDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(RadarDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/radar.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(RadarDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/radar.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(RadarDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/radar_anim.png");
	}
}
