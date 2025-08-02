package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.WarningLampDisplayItem;

public class WarningLampDisplayModel extends GeoModel<WarningLampDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(WarningLampDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/red_lamp.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WarningLampDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/red_lamp.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WarningLampDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/industrial_iron_lamp_own_off.png");
	}
}
