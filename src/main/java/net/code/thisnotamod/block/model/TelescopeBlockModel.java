package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.TelescopeTileEntity;

public class TelescopeBlockModel extends GeoModel<TelescopeTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(TelescopeTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/telescope.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/telescope.animation.json");
		return new ResourceLocation("thisnotamod", "animations/telescope.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TelescopeTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/telescope.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/telescope.geo.json");
		return new ResourceLocation("thisnotamod", "geo/telescope.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TelescopeTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/scope.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
		return new ResourceLocation("thisnotamod", "textures/block/scope.png");
	}
}
