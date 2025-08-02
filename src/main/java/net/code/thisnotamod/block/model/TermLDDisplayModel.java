package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.TermLDDisplayItem;

public class TermLDDisplayModel extends GeoModel<TermLDDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(TermLDDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/terminal_down_left.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TermLDDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/terminal_down_left.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TermLDDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/term_off.png");
	}
}
