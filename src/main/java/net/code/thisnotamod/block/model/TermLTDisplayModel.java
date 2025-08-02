package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.TermLTDisplayItem;

public class TermLTDisplayModel extends GeoModel<TermLTDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(TermLTDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/terminal_top_left.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TermLTDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/terminal_top_left.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TermLTDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/term_off.png");
	}
}
