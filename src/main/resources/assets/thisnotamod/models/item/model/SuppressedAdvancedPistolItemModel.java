package net.mcreator.terramity.item.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.mcreator.terramity.item.SuppressedAdvancedPistolItem;

public class SuppressedAdvancedPistolItemModel extends GeoModel<SuppressedAdvancedPistolItem> {
	@Override
	public ResourceLocation getAnimationResource(SuppressedAdvancedPistolItem animatable) {
		return new ResourceLocation("terramity", "animations/silenced_advanced_pistol.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(SuppressedAdvancedPistolItem animatable) {
		return new ResourceLocation("terramity", "geo/silenced_advanced_pistol.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(SuppressedAdvancedPistolItem animatable) {
		return new ResourceLocation("terramity", "textures/item/advanced_pistol.png");
	}
}
