package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.VotvLockerDisplayItem;

public class VotvLockerDisplayModel extends GeoModel<VotvLockerDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(VotvLockerDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/locker.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvLockerDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/locker.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvLockerDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_locker.png");
	}
}
