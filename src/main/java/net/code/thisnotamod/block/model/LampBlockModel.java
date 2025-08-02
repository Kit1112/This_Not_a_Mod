package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.LampTileEntity;

public class LampBlockModel extends GeoModel<LampTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(LampTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lamp.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lamp.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lamp.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lamp.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lamp.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lamp.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp_on.png");
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
