package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.VotvLockerTileEntity;

public class VotvLockerBlockModel extends GeoModel<VotvLockerTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(VotvLockerTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/locker_down.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/lockerdownwd.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/lockerdownwd.animation.json");
		return new ResourceLocation("thisnotamod", "animations/locker.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvLockerTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/locker_down.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/lockerdownwd.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/lockerdownwd.geo.json");
		return new ResourceLocation("thisnotamod", "geo/locker.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvLockerTileEntity animatable) {
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
