package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.ServerTileEntity;

public class ServerBlockModel extends GeoModel<ServerTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(ServerTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "animations/server.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(ServerTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "geo/server.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(ServerTileEntity animatable) {
		return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
	}
}
