package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.MannequinTopTileEntity;

public class MannequinTopBlockModel extends GeoModel<MannequinTopTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(MannequinTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/mannequintop.animation.json");
		return new ResourceLocation("thisnotamod", "animations/mannequintop.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(MannequinTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/mannequintop.geo.json");
		return new ResourceLocation("thisnotamod", "geo/mannequintop.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(MannequinTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/manndr.png");
		return new ResourceLocation("thisnotamod", "textures/block/manndr.png");
	}
}
