package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.WorkStatTileEntity;

public class WorkStatBlockModel extends GeoModel<WorkStatTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(WorkStatTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/workstations.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WorkStatTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/workstations.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WorkStatTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/workstat.png");
	}
}
