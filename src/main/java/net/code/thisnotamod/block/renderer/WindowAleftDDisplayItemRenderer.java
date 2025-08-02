package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WindowAleftDDisplayModel;
import net.code.thisnotamod.block.display.WindowAleftDDisplayItem;

public class WindowAleftDDisplayItemRenderer extends GeoItemRenderer<WindowAleftDDisplayItem> {
	public WindowAleftDDisplayItemRenderer() {
		super(new WindowAleftDDisplayModel());
	}

	@Override
	public RenderType getRenderType(WindowAleftDDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
