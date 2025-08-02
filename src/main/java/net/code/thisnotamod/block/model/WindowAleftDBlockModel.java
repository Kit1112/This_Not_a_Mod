package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.WindowAleftDTileEntity;

public class WindowAleftDBlockModel extends GeoModel<WindowAleftDTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(WindowAleftDTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/windowleftdown.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/windowleftdown.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/windowleftdown.animation.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "animations/windowleftdown.animation.json");
		return new ResourceLocation("thisnotamod", "animations/windowleftdown.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WindowAleftDTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/windowleftdown.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/windowleftdown.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/windowleftdown.geo.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "geo/windowleftdown.geo.json");
		return new ResourceLocation("thisnotamod", "geo/windowleftdown.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WindowAleftDTileEntity animatable) {
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
