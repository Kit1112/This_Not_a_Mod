package net.code.thisnotamod.client.gui;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.network.chat.Component;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.gui.components.Button;
import net.minecraft.client.gui.GuiGraphics;

import net.code.thisnotamod.world.inventory.KerfuIntMenu;

import java.util.HashMap;

import com.mojang.blaze3d.systems.RenderSystem;

public class KerfuIntScreen extends AbstractContainerScreen<KerfuIntMenu> {
	private final static HashMap<String, Object> guistate = KerfuIntMenu.guistate;
	private final Level world;
	private final int x, y, z;
	private final Player entity;
	private final static HashMap<String, String> textstate = new HashMap<>();
	Button button_aktivirovat;
	Button button_ispolzovat;
	Button button_ispolzovat1;

	public KerfuIntScreen(KerfuIntMenu container, Inventory inventory, Component text) {
		super(container, inventory, text);
		this.world = container.world;
		this.x = container.x;
		this.y = container.y;
		this.z = container.z;
		this.entity = container.entity;
		this.imageWidth = 86;
		this.imageHeight = 166;
	}

	@Override
	public void render(GuiGraphics guiGraphics, int mouseX, int mouseY, float partialTicks) {
		this.renderBackground(guiGraphics);
		super.render(guiGraphics, mouseX, mouseY, partialTicks);
		this.renderTooltip(guiGraphics, mouseX, mouseY);
	}

	@Override
	protected void renderBg(GuiGraphics guiGraphics, float partialTicks, int gx, int gy) {
		RenderSystem.setShaderColor(1, 1, 1, 1);
		RenderSystem.enableBlend();
		RenderSystem.defaultBlendFunc();
		RenderSystem.disableBlend();
	}

	@Override
	public boolean keyPressed(int key, int b, int c) {
		if (key == 256) {
			this.minecraft.player.closeContainer();
			return true;
		}
		return super.keyPressed(key, b, c);
	}

	@Override
	protected void renderLabels(GuiGraphics guiGraphics, int mouseX, int mouseY) {
	}

	@Override
	public void init() {
		super.init();
		button_aktivirovat = Button.builder(Component.translatable("gui.thisnotamod.kerfu_int.button_aktivirovat"), e -> {
		}).bounds(this.leftPos + -1, this.topPos + 107, 88, 20).build();
		guistate.put("button:button_aktivirovat", button_aktivirovat);
		this.addRenderableWidget(button_aktivirovat);
		button_ispolzovat = Button.builder(Component.translatable("gui.thisnotamod.kerfu_int.button_ispolzovat"), e -> {
		}).bounds(this.leftPos + -1, this.topPos + 127, 88, 20).build();
		guistate.put("button:button_ispolzovat", button_ispolzovat);
		this.addRenderableWidget(button_ispolzovat);
		button_ispolzovat1 = Button.builder(Component.translatable("gui.thisnotamod.kerfu_int.button_ispolzovat1"), e -> {
		}).bounds(this.leftPos + -1, this.topPos + 147, 88, 20).build();
		guistate.put("button:button_ispolzovat1", button_ispolzovat1);
		this.addRenderableWidget(button_ispolzovat1);
	}
}
