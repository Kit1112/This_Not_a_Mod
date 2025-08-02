package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.TerminalDisplayItem;

public class TerminalDisplayModel extends GeoModel<TerminalDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(TerminalDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/terminal_down_right.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TerminalDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/terminal_down_right.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TerminalDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/term_off.png");
	}
}
