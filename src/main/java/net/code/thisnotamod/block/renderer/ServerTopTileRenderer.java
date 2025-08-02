package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.ServerTopBlockModel;
import net.code.thisnotamod.block.entity.ServerTopTileEntity;

public class ServerTopTileRenderer extends GeoBlockRenderer<ServerTopTileEntity> {
	public ServerTopTileRenderer() {
		super(new ServerTopBlockModel());
	}

	@Override
	public RenderType getRenderType(ServerTopTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
