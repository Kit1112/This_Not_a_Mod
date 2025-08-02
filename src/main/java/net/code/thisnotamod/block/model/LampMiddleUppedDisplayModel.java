package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampMiddleUppedDisplayItem;

public class LampMiddleUppedDisplayModel extends GeoModel<LampMiddleUppedDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampMiddleUppedDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamp_middle_upped.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampMiddleUppedDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamp_middle_upped.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampMiddleUppedDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
