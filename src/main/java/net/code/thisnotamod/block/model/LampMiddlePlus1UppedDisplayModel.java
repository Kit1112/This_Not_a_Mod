package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampMiddlePlus1UppedDisplayItem;

public class LampMiddlePlus1UppedDisplayModel extends GeoModel<LampMiddlePlus1UppedDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampMiddlePlus1UppedDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamp_middle_upped_plus1.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampMiddlePlus1UppedDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamp_middle_upped_plus1.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampMiddlePlus1UppedDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
