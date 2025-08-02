package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.VotvLockerMiddleDisplayItem;

public class VotvLockerMiddleDisplayModel extends GeoModel<VotvLockerMiddleDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(VotvLockerMiddleDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/locker_middle.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvLockerMiddleDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/locker_middle.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvLockerMiddleDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/middle_locker.png");
	}
}
