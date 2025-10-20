package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.FridgeDownTileEntity;

public class FridgeDownBlockModel extends GeoModel<FridgeDownTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(FridgeDownTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/fridgedown.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/fridgedown.animation.json");
		return new ResourceLocation("thisnotamod", "animations/fridgedown.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(FridgeDownTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/fridgedown.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/fridgedown.geo.json");
		return new ResourceLocation("thisnotamod", "geo/fridgedown.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(FridgeDownTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/light_fridge.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/light_fridge.png");
		return new ResourceLocation("thisnotamod", "textures/block/light_fridge.png");
	}
}
