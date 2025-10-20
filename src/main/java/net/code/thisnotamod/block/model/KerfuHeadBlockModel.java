package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.KerfuHeadTileEntity;

public class KerfuHeadBlockModel extends GeoModel<KerfuHeadTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(KerfuHeadTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/omega_kerfu_craft_head_v2.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(KerfuHeadTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/omega_kerfu_craft_head_v2.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(KerfuHeadTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/omega_kerfu_blue.png");
	}
}
