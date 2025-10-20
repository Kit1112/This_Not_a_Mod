package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.KerfuBlockTileEntity;

public class KerfuBlockBlockModel extends GeoModel<KerfuBlockTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(KerfuBlockTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/kerf-o_spawn_v5.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(KerfuBlockTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/kerf-o_spawn_v5.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(KerfuBlockTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/omega_kerfu_blue.png");
	}
}
