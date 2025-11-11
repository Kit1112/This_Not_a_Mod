package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.WorkStatTest2TileEntity;

public class WorkStatTest2BlockModel extends GeoModel<WorkStatTest2TileEntity> {
	@Override
	public ResourceLocation getAnimationResource(WorkStatTest2TileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/workstations.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WorkStatTest2TileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/workstations.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WorkStatTest2TileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_panel2.png");
	}
}
