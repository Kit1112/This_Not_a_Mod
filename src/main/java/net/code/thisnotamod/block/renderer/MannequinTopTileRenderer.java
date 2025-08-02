package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.MannequinTopBlockModel;
import net.code.thisnotamod.block.entity.MannequinTopTileEntity;

public class MannequinTopTileRenderer extends GeoBlockRenderer<MannequinTopTileEntity> {
	public MannequinTopTileRenderer() {
		super(new MannequinTopBlockModel());
	}

	@Override
	public RenderType getRenderType(MannequinTopTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
