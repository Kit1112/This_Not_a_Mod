package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.Lampplus1UppedTileEntity;

public class Lampplus1UppedBlockModel extends GeoModel<Lampplus1UppedTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(Lampplus1UppedTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lamp_plus1_upped.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lamp_plus1_upped.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lamp_plus1_upped.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(Lampplus1UppedTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lamp_plus1_upped.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lamp_plus1_upped.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lamp_plus1_upped.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(Lampplus1UppedTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp_on.png");
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
