package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WorkStatBlockModel;
import net.code.thisnotamod.block.entity.WorkStatTileEntity;

public class WorkStatTileRenderer extends GeoBlockRenderer<WorkStatTileEntity> {
	public WorkStatTileRenderer() {
		super(new WorkStatBlockModel());
	}

	@Override
	public RenderType getRenderType(WorkStatTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
