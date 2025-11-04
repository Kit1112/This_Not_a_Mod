package net.code.thisnotamod.item.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.item.DriveItem;

public class DriveItemModel extends GeoModel<DriveItem> {
	@Override
	public ResourceLocation getAnimationResource(DriveItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/drive.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(DriveItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/drive.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(DriveItem animatable) {
		return new ResourceLocation("thisnotamod", "textures/item/drive.png");
	}
}
