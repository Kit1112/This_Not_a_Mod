package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.WarningLampTileEntity;

public class WarningLampBlockModel extends GeoModel<WarningLampTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(WarningLampTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/red_lamp.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/red_lamp.animation.json");
		return new ResourceLocation("thisnotamod", "animations/red_lamp.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(WarningLampTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/red_lamp.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/red_lamp.geo.json");
		return new ResourceLocation("thisnotamod", "geo/red_lamp.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(WarningLampTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/industrial_iron_lamp_own_off.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/industrial_iron_lamp_own.png");
		return new ResourceLocation("thisnotamod", "textures/block/industrial_iron_lamp_own_off.png");
	}
}
