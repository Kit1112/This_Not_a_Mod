package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.VotvDoorTopTileEntity;

public class VotvDoorTopBlockModel extends GeoModel<VotvDoorTopTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(VotvDoorTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/votv_door.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/votv_door.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/votv_door.animation.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "animations/votv_door.animation.json");
		return new ResourceLocation("thisnotamod", "animations/votv_door.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(VotvDoorTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/votv_door.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/votv_door.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/votv_door.geo.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "geo/votv_door.geo.json");
		return new ResourceLocation("thisnotamod", "geo/votv_door.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(VotvDoorTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/votv_door.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/votv_door.png");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "textures/block/votv_door.png");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "textures/block/votv_door.png");
		return new ResourceLocation("thisnotamod", "textures/block/votv_door.png");
	}
}
