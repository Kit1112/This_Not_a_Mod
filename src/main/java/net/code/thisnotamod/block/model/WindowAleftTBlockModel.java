package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.WindowAleftTTileEntity;

public class WindowAleftTBlockModel extends GeoModel<WindowAleftTTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(WindowAleftTTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/windowlefttop.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/windowlefttop.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/windowlefttop.animation.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "animations/windowlefttop.animation.json");
		return new ResourceLocation("thisnotamod", "animations/windowlefttop.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WindowAleftTTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/windowlefttop.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/windowlefttop.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/windowlefttop.geo.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "geo/windowlefttop.geo.json");
		return new ResourceLocation("thisnotamod", "geo/windowlefttop.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WindowAleftTTileEntity animatable) {
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
