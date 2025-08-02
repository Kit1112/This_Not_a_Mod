package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.WCanimTileEntity;

public class WCanimBlockModel extends GeoModel<WCanimTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(WCanimTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/wc.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/wc.animation.json");
		return new ResourceLocation("thisnotamod", "animations/wc.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WCanimTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/wc.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/wc.geo.json");
		return new ResourceLocation("thisnotamod", "geo/wc.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WCanimTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_toilet.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_toilet.png");
		return new ResourceLocation("thisnotamod", "textures/block/tex_toilet.png");
	}
}
