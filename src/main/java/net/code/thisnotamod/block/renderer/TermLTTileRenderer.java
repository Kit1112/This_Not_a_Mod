package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TermLTBlockModel;
import net.code.thisnotamod.block.entity.TermLTTileEntity;

public class TermLTTileRenderer extends GeoBlockRenderer<TermLTTileEntity> {
	public TermLTTileRenderer() {
		super(new TermLTBlockModel());
	}

	@Override
	public RenderType getRenderType(TermLTTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
