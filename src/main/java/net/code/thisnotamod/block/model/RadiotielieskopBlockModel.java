package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.RadiotielieskopTileEntity;

public class RadiotielieskopBlockModel extends GeoModel<RadiotielieskopTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(RadiotielieskopTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/radiotelescope.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(RadiotielieskopTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/radiotelescope.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(RadiotielieskopTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/pizda.png");
	}
}
