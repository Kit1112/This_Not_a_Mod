package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.Lampplus1TileEntity;

public class Lampplus1BlockModel extends GeoModel<Lampplus1TileEntity> {
	@Override
	public ResourceLocation getAnimationResource(Lampplus1TileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/lamp_plus1.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lamp_plus1.animation.json");
		return new ResourceLocation("thisnotamod", "animations/lamp_plus1.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(Lampplus1TileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/lamp_plus1.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lamp_plus1.geo.json");
		return new ResourceLocation("thisnotamod", "geo/lamp_plus1.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(Lampplus1TileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp_on.png");
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
