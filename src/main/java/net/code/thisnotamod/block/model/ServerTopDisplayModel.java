package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.display.ServerTopDisplayItem;

public class ServerTopDisplayModel extends GeoModel<ServerTopDisplayItem> {
	@Override
	public ResourceLocation getAnimationResource(ServerTopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "animations/server.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(ServerTopDisplayItem animatable) {
		return new ResourceLocation("thisnotamod", "geo/server.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(ServerTopDisplayItem entity) {
		return new ResourceLocation("thisnotamod", "textures/block/server_new.png");
	}
}
