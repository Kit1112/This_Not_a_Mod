package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampUppedDisplayModel;
import net.code.thisnotamod.block.display.LampUppedDisplayItem;

public class LampUppedDisplayItemRenderer extends GeoItemRenderer<LampUppedDisplayItem> {
	public LampUppedDisplayItemRenderer() {
		super(new LampUppedDisplayModel());
	}

	@Override
	public RenderType getRenderType(LampUppedDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
