package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.RadiotielieskopDisplayItem;

public class RadiotielieskopDisplayModel extends GeoModel<RadiotielieskopDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(RadiotielieskopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/radiotelescope.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(RadiotielieskopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/radiotelescope.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(RadiotielieskopDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/pizda.png");
	}
}
