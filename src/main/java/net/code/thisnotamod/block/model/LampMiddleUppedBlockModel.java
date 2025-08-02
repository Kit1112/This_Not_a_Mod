package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.LampMiddleUppedTileEntity;

public class LampMiddleUppedBlockModel extends GeoModel<LampMiddleUppedTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(LampMiddleUppedTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lamp_middle_upped.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lamp_middle_upped.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lamp_middle_upped.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampMiddleUppedTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lamp_middle_upped.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lamp_middle_upped.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lamp_middle_upped.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampMiddleUppedTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp_on.png");
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
