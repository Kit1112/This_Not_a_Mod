package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.ZigaTileEntity;

public class ZigaBlockModel extends GeoModel<ZigaTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(ZigaTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/zigamet.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(ZigaTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/zigamet.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(ZigaTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/ziga.png");
	}
}
