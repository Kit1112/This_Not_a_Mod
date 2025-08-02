package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.ZigaBlockModel;
import net.code.thisnotamod.block.entity.ZigaTileEntity;

public class ZigaTileRenderer extends GeoBlockRenderer<ZigaTileEntity> {
	public ZigaTileRenderer() {
		super(new ZigaBlockModel());
	}

	@Override
	public RenderType getRenderType(ZigaTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
