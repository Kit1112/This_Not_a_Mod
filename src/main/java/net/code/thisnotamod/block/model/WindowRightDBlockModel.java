package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.WindowRightDTileEntity;

public class WindowRightDBlockModel extends GeoModel<WindowRightDTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(WindowRightDTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/windowtightdown.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/windowtightdown.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/windowtightdown.animation.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "animations/windowtightdown.animation.json");
		return new ResourceLocation("thisnotamod", "animations/windowtightdown.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WindowRightDTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/windowtightdown.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/windowtightdown.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/windowtightdown.geo.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "geo/windowtightdown.geo.json");
		return new ResourceLocation("thisnotamod", "geo/windowtightdown.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WindowRightDTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/window_tuff.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/window_andesit.png");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "textures/block/window_quartz.png");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "textures/block/window_ash_bricks.png");
		return new ResourceLocation("thisnotamod", "textures/block/window_andesit.png");
	}
}
