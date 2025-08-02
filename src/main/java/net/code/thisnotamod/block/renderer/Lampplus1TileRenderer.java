package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.Lampplus1BlockModel;
import net.code.thisnotamod.block.entity.Lampplus1TileEntity;

public class Lampplus1TileRenderer extends GeoBlockRenderer<Lampplus1TileEntity> {
	public Lampplus1TileRenderer() {
		super(new Lampplus1BlockModel());
	}

	@Override
	public RenderType getRenderType(Lampplus1TileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
