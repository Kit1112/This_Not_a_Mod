package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TermLDBlockModel;
import net.code.thisnotamod.block.entity.TermLDTileEntity;

public class TermLDTileRenderer extends GeoBlockRenderer<TermLDTileEntity> {
	public TermLDTileRenderer() {
		super(new TermLDBlockModel());
	}

	@Override
	public RenderType getRenderType(TermLDTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
