package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.CraftingTableRDisplayItem;

public class CraftingTableRDisplayModel extends GeoModel<CraftingTableRDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(CraftingTableRDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/crafting_table_votv_right.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(CraftingTableRDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/crafting_table_votv_right.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(CraftingTableRDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/craftingtablevotv.png");
	}
}
