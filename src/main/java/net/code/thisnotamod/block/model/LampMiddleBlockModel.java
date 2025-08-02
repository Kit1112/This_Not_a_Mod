package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.LampMiddleTileEntity;

public class LampMiddleBlockModel extends GeoModel<LampMiddleTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(LampMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lamp_middle.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lamp_middle.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lamp_middle.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lamp_middle.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lamp_middle.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lamp_middle.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp_on.png");
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
