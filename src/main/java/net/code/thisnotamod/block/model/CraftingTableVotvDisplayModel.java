package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.CraftingTableVotvDisplayItem;

public class CraftingTableVotvDisplayModel extends GeoModel<CraftingTableVotvDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(CraftingTableVotvDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/crafting_table_votv_left.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(CraftingTableVotvDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/crafting_table_votv_left.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(CraftingTableVotvDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/craftingtablevotv.png");
	}
}
