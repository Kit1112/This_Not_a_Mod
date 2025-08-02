package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampMiddleUppedDisplayModel;
import net.code.thisnotamod.block.display.LampMiddleUppedDisplayItem;

public class LampMiddleUppedDisplayItemRenderer extends GeoItemRenderer<LampMiddleUppedDisplayItem> {
	public LampMiddleUppedDisplayItemRenderer() {
		super(new LampMiddleUppedDisplayModel());
	}

	@Override
	public RenderType getRenderType(LampMiddleUppedDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
