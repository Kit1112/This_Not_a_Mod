package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.Lampplus1UppedBlockModel;
import net.code.thisnotamod.block.entity.Lampplus1UppedTileEntity;

public class Lampplus1UppedTileRenderer extends GeoBlockRenderer<Lampplus1UppedTileEntity> {
	public Lampplus1UppedTileRenderer() {
		super(new Lampplus1UppedBlockModel());
	}

	@Override
	public RenderType getRenderType(Lampplus1UppedTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
