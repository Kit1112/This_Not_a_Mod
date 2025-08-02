package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.ZigaDisplayItem;

public class ZigaDisplayModel extends GeoModel<ZigaDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(ZigaDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/zigamet.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(ZigaDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/zigamet.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(ZigaDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/ziga.png");
	}
}
