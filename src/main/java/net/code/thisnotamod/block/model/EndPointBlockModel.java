package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.EndPointTileEntity;

public class EndPointBlockModel extends GeoModel<EndPointTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(EndPointTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/default.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(EndPointTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/default.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(EndPointTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/default_block_tex.png");
	}
}
