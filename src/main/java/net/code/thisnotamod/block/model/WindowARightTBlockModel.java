package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.WindowARightTTileEntity;

public class WindowARightTBlockModel extends GeoModel<WindowARightTTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(WindowARightTTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/windowrighttop.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/windowrighttop.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/windowrighttop.animation.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "animations/windowrighttop.animation.json");
		return new ResourceLocation("thisnotamod", "animations/windowrighttop.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WindowARightTTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/windowrighttop.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/windowrighttop.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/windowrighttop.geo.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "geo/windowrighttop.geo.json");
		return new ResourceLocation("thisnotamod", "geo/windowrighttop.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WindowARightTTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/window_tuff.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/window_andesit.png");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "textures/block/window_quartz.png");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "textures/block/window_ash_bricks.png");
		return new ResourceLocation("thisnotamod", "textures/block/window_tuff.png");
	}
}
