package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.VotvDoorTopDisplayItem;

public class VotvDoorTopDisplayModel extends GeoModel<VotvDoorTopDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(VotvDoorTopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/votv_door.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvDoorTopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/votv_door.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvDoorTopDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/votv_door.png");
	}
}
