package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.CraftingTableVotvTileEntity;

public class CraftingTableVotvBlockModel extends GeoModel<CraftingTableVotvTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(CraftingTableVotvTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/crafting_table_votv_left.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(CraftingTableVotvTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/crafting_table_votv_left.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(CraftingTableVotvTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/craftingtablevotv.png");
	}
}
