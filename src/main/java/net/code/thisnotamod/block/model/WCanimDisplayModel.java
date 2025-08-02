package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.WCanimDisplayItem;

public class WCanimDisplayModel extends GeoModel<WCanimDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(WCanimDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/wc.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WCanimDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/wc.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WCanimDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/tex_toilet.png");
	}
}
