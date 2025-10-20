package net.code.thisnotamod.item.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.item.KerfuBodyItem;

public class KerfuBodyItemModel extends GeoModel<KerfuBodyItem> {
	@Override
	public ResourceLocation getAnimationResource(KerfuBodyItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/omega_kerf_body.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(KerfuBodyItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/omega_kerf_body.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(KerfuBodyItem animatable) {
		return new ResourceLocation("thisnotamod", "textures/item/omega_kerfu_blue.png");
	}
}
