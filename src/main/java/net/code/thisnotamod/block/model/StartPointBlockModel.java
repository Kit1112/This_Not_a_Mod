package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.StartPointTileEntity;

public class StartPointBlockModel extends GeoModel<StartPointTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(StartPointTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/default.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(StartPointTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/default.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(StartPointTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/default_block_tex.png");
	}
}
