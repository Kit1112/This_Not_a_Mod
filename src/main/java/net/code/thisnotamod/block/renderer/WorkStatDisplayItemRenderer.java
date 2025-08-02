package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WorkStatDisplayModel;
import net.code.thisnotamod.block.display.WorkStatDisplayItem;

public class WorkStatDisplayItemRenderer extends GeoItemRenderer<WorkStatDisplayItem> {
	public WorkStatDisplayItemRenderer() {
		super(new WorkStatDisplayModel());
	}

	@Override
	public RenderType getRenderType(WorkStatDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
