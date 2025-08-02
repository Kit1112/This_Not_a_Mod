package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.Lampplus1DisplayItem;

public class Lampplus1DisplayModel extends GeoModel<Lampplus1DisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(Lampplus1DisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamp_plus1.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(Lampplus1DisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamp_plus1.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(Lampplus1DisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
