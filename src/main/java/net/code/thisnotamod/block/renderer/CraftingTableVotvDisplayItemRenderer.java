package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.CraftingTableVotvDisplayModel;
import net.code.thisnotamod.block.display.CraftingTableVotvDisplayItem;

public class CraftingTableVotvDisplayItemRenderer extends GeoItemRenderer<CraftingTableVotvDisplayItem> {
	public CraftingTableVotvDisplayItemRenderer() {
		super(new CraftingTableVotvDisplayModel());
	}

	@Override
	public RenderType getRenderType(CraftingTableVotvDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
