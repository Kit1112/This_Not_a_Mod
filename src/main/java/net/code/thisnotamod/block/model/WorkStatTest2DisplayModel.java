package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.WorkStatTest2DisplayItem;

public class WorkStatTest2DisplayModel extends GeoModel<WorkStatTest2DisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(WorkStatTest2DisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/workstations.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WorkStatTest2DisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/workstations.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WorkStatTest2DisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_panel2.png");
	}
}
