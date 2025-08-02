package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TermRTDisplayModel;
import net.code.thisnotamod.block.display.TermRTDisplayItem;

public class TermRTDisplayItemRenderer extends GeoItemRenderer<TermRTDisplayItem> {
	public TermRTDisplayItemRenderer() {
		super(new TermRTDisplayModel());
	}

	@Override
	public RenderType getRenderType(TermRTDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
