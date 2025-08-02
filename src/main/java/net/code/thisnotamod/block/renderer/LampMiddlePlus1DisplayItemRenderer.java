package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampMiddlePlus1DisplayModel;
import net.code.thisnotamod.block.display.LampMiddlePlus1DisplayItem;

public class LampMiddlePlus1DisplayItemRenderer extends GeoItemRenderer<LampMiddlePlus1DisplayItem> {
	public LampMiddlePlus1DisplayItemRenderer() {
		super(new LampMiddlePlus1DisplayModel());
	}

	@Override
	public RenderType getRenderType(LampMiddlePlus1DisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
