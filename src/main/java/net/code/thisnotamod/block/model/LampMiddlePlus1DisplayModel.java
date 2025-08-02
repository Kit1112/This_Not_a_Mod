package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LampMiddlePlus1DisplayItem;

public class LampMiddlePlus1DisplayModel extends GeoModel<LampMiddlePlus1DisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LampMiddlePlus1DisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamp_middle_plus1.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LampMiddlePlus1DisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamp_middle_plus1.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LampMiddlePlus1DisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
