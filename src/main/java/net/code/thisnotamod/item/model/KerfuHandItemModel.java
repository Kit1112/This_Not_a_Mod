package net.code.thisnotamod.item.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.item.KerfuHandItem;

public class KerfuHandItemModel extends GeoModel<KerfuHandItem> {
	@Override
	public ResourceLocation getAnimationResource(KerfuHandItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/omega_kerfu_craft_hand.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(KerfuHandItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/omega_kerfu_craft_hand.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(KerfuHandItem animatable) {
		return new ResourceLocation("thisnotamod", "textures/item/omega_kerfu_blue.png");
	}
}
