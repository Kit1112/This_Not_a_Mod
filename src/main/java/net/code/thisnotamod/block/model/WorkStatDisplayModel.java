package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.WorkStatDisplayItem;

public class WorkStatDisplayModel extends GeoModel<WorkStatDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(WorkStatDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/workstations.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WorkStatDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/workstations.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WorkStatDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/workstat.png");
	}
}
