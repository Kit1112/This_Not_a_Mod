package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.CraftingTableRDisplayModel;
import net.code.thisnotamod.block.display.CraftingTableRDisplayItem;

public class CraftingTableRDisplayItemRenderer extends GeoItemRenderer<CraftingTableRDisplayItem> {
	public CraftingTableRDisplayItemRenderer() {
		super(new CraftingTableRDisplayModel());
	}

	@Override
	public RenderType getRenderType(CraftingTableRDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
