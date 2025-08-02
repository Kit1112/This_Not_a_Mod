package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.VotvLockerTopDisplayItem;

public class VotvLockerTopDisplayModel extends GeoModel<VotvLockerTopDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(VotvLockerTopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/locker_top.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvLockerTopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/locker_top.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvLockerTopDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
	}
}
