package net.code.thisnotamod.item.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.item.KerfuLegItem;

public class KerfuLegItemModel extends GeoModel<KerfuLegItem> {
	@Override
	public ResourceLocation getAnimationResource(KerfuLegItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/omega_kerfu_craft_leg.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(KerfuLegItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/omega_kerfu_craft_leg.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(KerfuLegItem animatable) {
		return new ResourceLocation("thisnotamod", "textures/item/omega_kerfu_blue.png");
	}
}
