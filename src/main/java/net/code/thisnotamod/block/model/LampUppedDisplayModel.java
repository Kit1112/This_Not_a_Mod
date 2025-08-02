package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampUppedDisplayItem;

public class LampUppedDisplayModel extends GeoModel<LampUppedDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampUppedDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamp_upped.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampUppedDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamp_upped.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampUppedDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
