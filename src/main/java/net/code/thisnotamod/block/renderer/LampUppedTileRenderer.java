package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampUppedBlockModel;
import net.code.thisnotamod.block.entity.LampUppedTileEntity;

public class LampUppedTileRenderer extends GeoBlockRenderer<LampUppedTileEntity> {
	public LampUppedTileRenderer() {
		super(new LampUppedBlockModel());
	}

	@Override
	public RenderType getRenderType(LampUppedTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
