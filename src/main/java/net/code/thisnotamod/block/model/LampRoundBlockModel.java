package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.LampRoundTileEntity;

public class LampRoundBlockModel extends GeoModel<LampRoundTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(LampRoundTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lampround.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lampround.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lampround.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampRoundTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lampround.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lampround.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lampround.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampRoundTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
		return new ResourceLocation("thisnotamod", "textures/block/lamproundoff.png");
	}
}
