package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WorkStatTest2BlockModel;
import net.code.thisnotamod.block.entity.WorkStatTest2TileEntity;

public class WorkStatTest2TileRenderer extends GeoBlockRenderer<WorkStatTest2TileEntity> {
	public WorkStatTest2TileRenderer() {
		super(new WorkStatTest2BlockModel());
	}

	@Override
	public RenderType getRenderType(WorkStatTest2TileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
