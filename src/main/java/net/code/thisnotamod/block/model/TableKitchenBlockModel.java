package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.TableKitchenTileEntity;

public class TableKitchenBlockModel extends GeoModel<TableKitchenTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(TableKitchenTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/tablekitchen.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TableKitchenTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/tablekitchen.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TableKitchenTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/table.png");
	}
}
