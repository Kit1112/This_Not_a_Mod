package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TerminalDisplayModel;
import net.code.thisnotamod.block.display.TerminalDisplayItem;

public class TerminalDisplayItemRenderer extends GeoItemRenderer<TerminalDisplayItem> {
	public TerminalDisplayItemRenderer() {
		super(new TerminalDisplayModel());
	}

	@Override
	public RenderType getRenderType(TerminalDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
