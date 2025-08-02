package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.ServerDisplayItem;

public class ServerDisplayModel extends GeoModel<ServerDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(ServerDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/server.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(ServerDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/server.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(ServerDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/transparent.png");
	}
}
