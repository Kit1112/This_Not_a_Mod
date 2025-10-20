package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.KerfuHeadBlockModel;
import net.code.thisnotamod.block.entity.KerfuHeadTileEntity;

public class KerfuHeadTileRenderer extends GeoBlockRenderer<KerfuHeadTileEntity> {
	public KerfuHeadTileRenderer() {
		super(new KerfuHeadBlockModel());
	}

	@Override
	public RenderType getRenderType(KerfuHeadTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
