package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.VotvDoorTileEntity;

public class VotvDoorBlockModel extends GeoModel<VotvDoorTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(VotvDoorTileEntity animatable) {
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
	public ResourceLocation getModelResource(VotvDoorTileEntity animatable) {
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
	public ResourceLocation getTextureResource(VotvDoorTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
		return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
	}
}
