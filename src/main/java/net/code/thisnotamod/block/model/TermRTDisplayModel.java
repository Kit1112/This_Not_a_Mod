package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.TermRTDisplayItem;

public class TermRTDisplayModel extends GeoModel<TermRTDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(TermRTDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/terminal_top_right.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TermRTDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/terminal_top_right.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TermRTDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/term_off.png");
	}
}
