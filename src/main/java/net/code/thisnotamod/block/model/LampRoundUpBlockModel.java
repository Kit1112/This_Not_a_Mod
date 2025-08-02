package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.LampRoundUpTileEntity;

public class LampRoundUpBlockModel extends GeoModel<LampRoundUpTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(LampRoundUpTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lamproundup.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lamproundup.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lamproundup.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampRoundUpTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lamproundup.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lamproundup.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lamproundup.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampRoundUpTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
		return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
	}
}
