package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TerminalBlockModel;
import net.code.thisnotamod.block.entity.TerminalTileEntity;

public class TerminalTileRenderer extends GeoBlockRenderer<TerminalTileEntity> {
	public TerminalTileRenderer() {
		super(new TerminalBlockModel());
	}

	@Override
	public RenderType getRenderType(TerminalTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
