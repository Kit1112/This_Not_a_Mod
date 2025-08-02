package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampMiddlePlus1UppedDisplayModel;
import net.code.thisnotamod.block.display.LampMiddlePlus1UppedDisplayItem;

public class LampMiddlePlus1UppedDisplayItemRenderer extends GeoItemRenderer<LampMiddlePlus1UppedDisplayItem> {
	public LampMiddlePlus1UppedDisplayItemRenderer() {
		super(new LampMiddlePlus1UppedDisplayModel());
	}

	@Override
	public RenderType getRenderType(LampMiddlePlus1UppedDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
