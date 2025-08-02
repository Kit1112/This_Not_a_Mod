package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.VentCornerTileEntity;

public class VentCornerBlockModel extends GeoModel<VentCornerTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(VentCornerTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/vent_corner.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VentCornerTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/vent_corner.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VentCornerTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/vent_corner.png");
	}
}
