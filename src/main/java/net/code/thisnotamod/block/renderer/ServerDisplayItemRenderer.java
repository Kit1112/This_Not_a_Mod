package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.ServerDisplayModel;
import net.code.thisnotamod.block.display.ServerDisplayItem;

public class ServerDisplayItemRenderer extends GeoItemRenderer<ServerDisplayItem> {
	public ServerDisplayItemRenderer() {
		super(new ServerDisplayModel());
	}

	@Override
	public RenderType getRenderType(ServerDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
