package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.CraftingTableRTileEntity;

public class CraftingTableRBlockModel extends GeoModel<CraftingTableRTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(CraftingTableRTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/crafting_table_votv_right.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(CraftingTableRTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/crafting_table_votv_right.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(CraftingTableRTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/craftingtablevotv.png");
	}
}
