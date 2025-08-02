package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.ServerTopTileEntity;

public class ServerTopBlockModel extends GeoModel<ServerTopTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(ServerTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/server.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/server.animation.json");
		return new ResourceLocation("thisnotamod", "animations/server.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(ServerTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/server.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/server.geo.json");
		return new ResourceLocation("thisnotamod", "geo/server.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(ServerTopTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/server_new.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/server_new_red.png");
		return new ResourceLocation("thisnotamod", "textures/block/server_new.png");
	}
}
