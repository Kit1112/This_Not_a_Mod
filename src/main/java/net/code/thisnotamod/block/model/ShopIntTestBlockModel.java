package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.ShopIntTestTileEntity;

public class ShopIntTestBlockModel extends GeoModel<ShopIntTestTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(ShopIntTestTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/default.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(ShopIntTestTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/default.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(ShopIntTestTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/default_block_tex.png");
	}
}
