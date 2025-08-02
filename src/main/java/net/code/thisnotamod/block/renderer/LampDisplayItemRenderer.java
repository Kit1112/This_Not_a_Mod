package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampDisplayModel;
import net.code.thisnotamod.block.display.LampDisplayItem;

public class LampDisplayItemRenderer extends GeoItemRenderer<LampDisplayItem> {
	public LampDisplayItemRenderer() {
		super(new LampDisplayModel());
	}

	@Override
	public RenderType getRenderType(LampDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
