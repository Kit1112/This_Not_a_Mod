package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TermLTDisplayModel;
import net.code.thisnotamod.block.display.TermLTDisplayItem;

public class TermLTDisplayItemRenderer extends GeoItemRenderer<TermLTDisplayItem> {
	public TermLTDisplayItemRenderer() {
		super(new TermLTDisplayModel());
	}

	@Override
	public RenderType getRenderType(TermLTDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
