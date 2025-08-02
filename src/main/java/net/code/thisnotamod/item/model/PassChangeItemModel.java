package net.code.thisnotamod.item.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.item.PassChangeItem;

public class PassChangeItemModel extends GeoModel<PassChangeItem> {
	@Override
	public ResourceLocation getAnimationResource(PassChangeItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/passchange.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(PassChangeItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/passchange.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(PassChangeItem animatable) {
		return new ResourceLocation("thisnotamod", "textures/item/passchange.png");
	}
}
