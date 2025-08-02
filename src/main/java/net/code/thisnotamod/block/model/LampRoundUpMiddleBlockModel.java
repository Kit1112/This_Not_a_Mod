package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.LampRoundUpMiddleTileEntity;

public class LampRoundUpMiddleBlockModel extends GeoModel<LampRoundUpMiddleTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(LampRoundUpMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lamproundupmiddle.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lamproundupmiddle.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lamproundupmiddle.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampRoundUpMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lamproundupmiddle.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lamproundupmiddle.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lamproundupmiddle.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampRoundUpMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
		return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
	}
}
