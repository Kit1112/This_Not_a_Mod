package net.code.thisnotamod.item.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.item.KerfuWombItem;

public class KerfuWombItemModel extends GeoModel<KerfuWombItem> {
	@Override
	public ResourceLocation getAnimationResource(KerfuWombItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/omega_kerfu_craft_womb.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(KerfuWombItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/omega_kerfu_craft_womb.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(KerfuWombItem animatable) {
		return new ResourceLocation("thisnotamod", "textures/item/omega_kerfu_blue.png");
	}
}
