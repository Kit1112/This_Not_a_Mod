package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.LampRoundMiddleTileEntity;

public class LampRoundMiddleBlockModel extends GeoModel<LampRoundMiddleTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(LampRoundMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lamproundmiddle.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lamproundmiddle.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lamproundmiddle.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampRoundMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lamproundmiddle.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lamproundmiddle.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lamproundmiddle.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampRoundMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
		return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
	}
}
