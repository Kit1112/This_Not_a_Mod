package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.KerfuBlockDisplayModel;
import net.code.thisnotamod.block.display.KerfuBlockDisplayItem;

public class KerfuBlockDisplayItemRenderer extends GeoItemRenderer<KerfuBlockDisplayItem> {
	public KerfuBlockDisplayItemRenderer() {
		super(new KerfuBlockDisplayModel());
	}

	@Override
	public RenderType getRenderType(KerfuBlockDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
