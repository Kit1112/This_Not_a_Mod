package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.PasslockDisplayItem;

public class PasslockDisplayModel extends GeoModel<PasslockDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(PasslockDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/passlock.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(PasslockDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/passlock.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(PasslockDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/passlock_access.png");
	}
}
