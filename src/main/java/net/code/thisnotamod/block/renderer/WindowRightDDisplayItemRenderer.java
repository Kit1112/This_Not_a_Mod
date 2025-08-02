package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WindowRightDDisplayModel;
import net.code.thisnotamod.block.display.WindowRightDDisplayItem;

public class WindowRightDDisplayItemRenderer extends GeoItemRenderer<WindowRightDDisplayItem> {
	public WindowRightDDisplayItemRenderer() {
		super(new WindowRightDDisplayModel());
	}

	@Override
	public RenderType getRenderType(WindowRightDDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
