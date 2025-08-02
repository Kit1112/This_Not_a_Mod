package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VentCornerHorizontalDisplayModel;
import net.code.thisnotamod.block.display.VentCornerHorizontalDisplayItem;

public class VentCornerHorizontalDisplayItemRenderer extends GeoItemRenderer<VentCornerHorizontalDisplayItem> {
	public VentCornerHorizontalDisplayItemRenderer() {
		super(new VentCornerHorizontalDisplayModel());
	}

	@Override
	public RenderType getRenderType(VentCornerHorizontalDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
