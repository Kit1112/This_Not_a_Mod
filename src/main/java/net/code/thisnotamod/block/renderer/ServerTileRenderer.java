package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.ServerBlockModel;
import net.code.thisnotamod.block.entity.ServerTileEntity;

public class ServerTileRenderer extends GeoBlockRenderer<ServerTileEntity> {
	public ServerTileRenderer() {
		super(new ServerBlockModel());
	}

	@Override
	public RenderType getRenderType(ServerTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
