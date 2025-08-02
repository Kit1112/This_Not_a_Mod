package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.Lampplus1UppedDisplayModel;
import net.code.thisnotamod.block.display.Lampplus1UppedDisplayItem;

public class Lampplus1UppedDisplayItemRenderer extends GeoItemRenderer<Lampplus1UppedDisplayItem> {
	public Lampplus1UppedDisplayItemRenderer() {
		super(new Lampplus1UppedDisplayModel());
	}

	@Override
	public RenderType getRenderType(Lampplus1UppedDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
