package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.RadarTileEntity;

public class RadarBlockModel extends GeoModel<RadarTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(RadarTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/radar.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(RadarTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/radar.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(RadarTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/radar_anim.png");
	}
}
