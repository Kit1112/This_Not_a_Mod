package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.VotvLockerTopTileEntity;

public class VotvLockerTopBlockModel extends GeoModel<VotvLockerTopTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(VotvLockerTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/locker_top.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lockertopwd.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/lockertopwd.animation.json");
		return new ResourceLocation("thisnotamod", "animations/locker_top.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvLockerTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/locker_top.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lockertopwd.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/lockertopwd.geo.json");
		return new ResourceLocation("thisnotamod", "geo/locker_top.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvLockerTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
		return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
	}
}
