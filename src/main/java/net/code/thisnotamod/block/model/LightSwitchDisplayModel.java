package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.LightSwitchDisplayItem;

public class LightSwitchDisplayModel extends GeoModel<LightSwitchDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(LightSwitchDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/switch.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LightSwitchDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/switch.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LightSwitchDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_switch.png");
	}
}
