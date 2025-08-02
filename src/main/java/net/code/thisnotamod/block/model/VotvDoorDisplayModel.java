package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.VotvDoorDisplayItem;

public class VotvDoorDisplayModel extends GeoModel<VotvDoorDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(VotvDoorDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/votv_door.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvDoorDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/votv_door.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvDoorDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
	}
}
