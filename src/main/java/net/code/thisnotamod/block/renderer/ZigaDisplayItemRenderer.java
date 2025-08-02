package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.ZigaDisplayModel;
import net.code.thisnotamod.block.display.ZigaDisplayItem;

public class ZigaDisplayItemRenderer extends GeoItemRenderer<ZigaDisplayItem> {
	public ZigaDisplayItemRenderer() {
		super(new ZigaDisplayModel());
	}

	@Override
	public RenderType getRenderType(ZigaDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
