package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.VentCornerHorizontalTileEntity;

public class VentCornerHorizontalBlockModel extends GeoModel<VentCornerHorizontalTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(VentCornerHorizontalTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/vent_corner_horizontal.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VentCornerHorizontalTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/vent_corner_horizontal.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VentCornerHorizontalTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/vent_corner.png");
	}
}
