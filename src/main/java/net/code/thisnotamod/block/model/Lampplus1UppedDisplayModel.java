package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.Lampplus1UppedDisplayItem;

public class Lampplus1UppedDisplayModel extends GeoModel<Lampplus1UppedDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(Lampplus1UppedDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/lamp_plus1_upped.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(Lampplus1UppedDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/lamp_plus1_upped.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(Lampplus1UppedDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_ceilinglamp.png");
	}
}
