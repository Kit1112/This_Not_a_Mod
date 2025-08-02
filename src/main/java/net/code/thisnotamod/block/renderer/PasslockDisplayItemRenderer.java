package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.PasslockDisplayModel;
import net.code.thisnotamod.block.display.PasslockDisplayItem;

public class PasslockDisplayItemRenderer extends GeoItemRenderer<PasslockDisplayItem> {
	public PasslockDisplayItemRenderer() {
		super(new PasslockDisplayModel());
	}

	@Override
	public RenderType getRenderType(PasslockDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
