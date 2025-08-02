package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.TelescopeDisplayItem;

public class TelescopeDisplayModel extends GeoModel<TelescopeDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(TelescopeDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/telescope.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TelescopeDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/telescope.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TelescopeDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/scope.png");
	}
}
