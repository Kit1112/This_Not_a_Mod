package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TermLDDisplayModel;
import net.code.thisnotamod.block.display.TermLDDisplayItem;

public class TermLDDisplayItemRenderer extends GeoItemRenderer<TermLDDisplayItem> {
	public TermLDDisplayItemRenderer() {
		super(new TermLDDisplayModel());
	}

	@Override
	public RenderType getRenderType(TermLDDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
