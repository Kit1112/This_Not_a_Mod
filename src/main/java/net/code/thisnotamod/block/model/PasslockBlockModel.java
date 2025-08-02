package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.PasslockTileEntity;

public class PasslockBlockModel extends GeoModel<PasslockTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(PasslockTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/passlock.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/passlock.animation.json");
		return new ResourceLocation("thisnotamod", "animations/passlock.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(PasslockTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/passlock.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/passlock.geo.json");
		return new ResourceLocation("thisnotamod", "geo/passlock.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(PasslockTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/passlock_access.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/passlock_deny.png");
		return new ResourceLocation("thisnotamod", "textures/block/passlock_access.png");
	}
}
