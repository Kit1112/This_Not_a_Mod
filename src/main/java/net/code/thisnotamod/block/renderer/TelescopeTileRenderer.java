package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TelescopeBlockModel;
import net.code.thisnotamod.block.entity.TelescopeTileEntity;

public class TelescopeTileRenderer extends GeoBlockRenderer<TelescopeTileEntity> {
	public TelescopeTileRenderer() {
		super(new TelescopeBlockModel());
	}

	@Override
	public RenderType getRenderType(TelescopeTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
