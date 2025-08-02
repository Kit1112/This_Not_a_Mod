package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VentCornerDisplayModel;
import net.code.thisnotamod.block.display.VentCornerDisplayItem;

public class VentCornerDisplayItemRenderer extends GeoItemRenderer<VentCornerDisplayItem> {
	public VentCornerDisplayItemRenderer() {
		super(new VentCornerDisplayModel());
	}

	@Override
	public RenderType getRenderType(VentCornerDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
