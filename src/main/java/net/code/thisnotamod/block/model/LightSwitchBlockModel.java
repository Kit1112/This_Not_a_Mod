package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.LightSwitchTileEntity;

public class LightSwitchBlockModel extends GeoModel<LightSwitchTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(LightSwitchTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/switch.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/switch.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/switch.animation.json");
		return new ResourceLocation("thisnotamod", "animations/switch.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(LightSwitchTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/switch.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/switch.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/switch.geo.json");
		return new ResourceLocation("thisnotamod", "geo/switch.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(LightSwitchTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/tex_switch.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/tex_switch.png");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "textures/block/tex_switch.png");
		return new ResourceLocation("thisnotamod", "textures/block/tex_switch.png");
	}
}
