package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.KerfuBlockBlockModel;
import net.code.thisnotamod.block.entity.KerfuBlockTileEntity;

public class KerfuBlockTileRenderer extends GeoBlockRenderer<KerfuBlockTileEntity> {
	public KerfuBlockTileRenderer() {
		super(new KerfuBlockBlockModel());
	}

	@Override
	public RenderType getRenderType(KerfuBlockTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
