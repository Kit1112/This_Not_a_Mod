package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.Lampplus1DisplayModel;
import net.code.thisnotamod.block.display.Lampplus1DisplayItem;

public class Lampplus1DisplayItemRenderer extends GeoItemRenderer<Lampplus1DisplayItem> {
	public Lampplus1DisplayItemRenderer() {
		super(new Lampplus1DisplayModel());
	}

	@Override
	public RenderType getRenderType(Lampplus1DisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
