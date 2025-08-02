package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.VotvLockerMiddleTileEntity;

public class VotvLockerMiddleBlockModel extends GeoModel<VotvLockerMiddleTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(VotvLockerMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/locker_middle.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/locker_middle.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/locker_middle.animation.json");
		return new ResourceLocation("thisnotamod", "animations/locker_middle.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvLockerMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/locker_middle.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/locker_middle.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/locker_middle.geo.json");
		return new ResourceLocation("thisnotamod", "geo/locker_middle.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvLockerMiddleTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
		return new ResourceLocation("thisnotamod", "textures/block/middle_locker.png");
	}
}
