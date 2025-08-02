package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.MannequinDownTileEntity;

public class MannequinDownBlockModel extends GeoModel<MannequinDownTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(MannequinDownTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/mannequindown.animation.json");
		return new ResourceLocation("thisnotamod", "animations/mannequindown.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(MannequinDownTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/mannequindown.geo.json");
		return new ResourceLocation("thisnotamod", "geo/mannequindown.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(MannequinDownTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/manndr.png");
		return new ResourceLocation("thisnotamod", "textures/block/manndr.png");
	}
}
