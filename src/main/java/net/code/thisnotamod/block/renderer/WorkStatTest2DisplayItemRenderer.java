package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WorkStatTest2DisplayModel;
import net.code.thisnotamod.block.display.WorkStatTest2DisplayItem;

public class WorkStatTest2DisplayItemRenderer extends GeoItemRenderer<WorkStatTest2DisplayItem> {
	public WorkStatTest2DisplayItemRenderer() {
		super(new WorkStatTest2DisplayModel());
	}

	@Override
	public RenderType getRenderType(WorkStatTest2DisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
