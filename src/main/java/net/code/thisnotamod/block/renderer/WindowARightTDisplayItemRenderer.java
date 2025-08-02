package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WindowARightTDisplayModel;
import net.code.thisnotamod.block.display.WindowARightTDisplayItem;

public class WindowARightTDisplayItemRenderer extends GeoItemRenderer<WindowARightTDisplayItem> {
	public WindowARightTDisplayItemRenderer() {
		super(new WindowARightTDisplayModel());
	}

	@Override
	public RenderType getRenderType(WindowARightTDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
