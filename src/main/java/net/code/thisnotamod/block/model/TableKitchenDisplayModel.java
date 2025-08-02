package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.TableKitchenDisplayItem;

public class TableKitchenDisplayModel extends GeoModel<TableKitchenDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(TableKitchenDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/tablekitchen.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TableKitchenDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/tablekitchen.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TableKitchenDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/table.png");
	}
}
