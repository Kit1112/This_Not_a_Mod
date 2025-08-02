package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.ServerTopDisplayModel;
import net.code.thisnotamod.block.display.ServerTopDisplayItem;

public class ServerTopDisplayItemRenderer extends GeoItemRenderer<ServerTopDisplayItem> {
	public ServerTopDisplayItemRenderer() {
		super(new ServerTopDisplayModel());
	}

	@Override
	public RenderType getRenderType(ServerTopDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
