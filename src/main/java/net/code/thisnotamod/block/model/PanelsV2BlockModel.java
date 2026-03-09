package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.PanelsV2TileEntity;

public class PanelsV2BlockModel extends GeoModel<PanelsV2TileEntity> {
	@Override
	public ResourceLocation getAnimationResource(PanelsV2TileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/panels.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(PanelsV2TileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/panels.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(PanelsV2TileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/panels.png");
	}
}
