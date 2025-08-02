package net.code.thisnotamod.client.gui;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.network.chat.Component;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.gui.components.EditBox;
import net.minecraft.client.gui.components.Button;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.world.inventory.PassChangeGuiMenu;
import net.code.thisnotamod.network.PassChangeGuiButtonMessage;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.HashMap;

import com.mojang.blaze3d.systems.RenderSystem;

public class PassChangeGuiScreen extends AbstractContainerScreen<PassChangeGuiMenu> {
	private final static HashMap<String, Object> guistate = PassChangeGuiMenu.guistate;
	private final Level world;
	private final int x, y, z;
	private final Player entity;
	private final static HashMap<String, String> textstate = new HashMap<>();
	public static EditBox PassChange;
	Button button_empty;

	public PassChangeGuiScreen(PassChangeGuiMenu container, Inventory inventory, Component text) {
		super(container, inventory, text);
		this.world = container.world;
		this.x = container.x;
		this.y = container.y;
		this.z = container.z;
		this.entity = container.entity;
		this.imageWidth = 176;
		this.imageHeight = 166;
	}

	@Override
	public void render(GuiGraphics guiGraphics, int mouseX, int mouseY, float partialTicks) {
		this.renderBackground(guiGraphics);
		super.render(guiGraphics, mouseX, mouseY, partialTicks);
		PassChange.render(guiGraphics, mouseX, mouseY, partialTicks);
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
		if (PassChange.isFocused())
			return PassChange.keyPressed(key, b, c);
		return super.keyPressed(key, b, c);
	}

	@Override
	public void containerTick() {
		super.containerTick();
		PassChange.tick();
	}

	@Override
	public void resize(Minecraft minecraft, int width, int height) {
		String PassChangeValue = PassChange.getValue();
		super.resize(minecraft, width, height);
		PassChange.setValue(PassChangeValue);
	}

	@Override
	protected void renderLabels(GuiGraphics guiGraphics, int mouseX, int mouseY) {
	}

	@Override
	public void init() {
		super.init();
		PassChange = new EditBox(this.font, this.leftPos + 27, this.topPos + 71, 118, 18, Component.translatable("gui.thisnotamod.pass_change_gu.PassChange")) {
			@Override
			public void insertText(String text) {
				super.insertText(text);
				if (getValue().isEmpty())
					setSuggestion(Component.translatable("gui.thisnotamod.pass_change_gu.PassChange").getString());
				else
					setSuggestion(null);
			}

			@Override
			public void moveCursorTo(int pos) {
				super.moveCursorTo(pos);
				if (getValue().isEmpty())
					setSuggestion(Component.translatable("gui.thisnotamod.pass_change_gu.PassChange").getString());
				else
					setSuggestion(null);
			}
		};
		PassChange.setSuggestion(Component.translatable("gui.thisnotamod.pass_change_gu.PassChange").getString());
		PassChange.setMaxLength(32767);
		guistate.put("text:PassChange", PassChange);
		this.addWidget(this.PassChange);
		button_empty = Button.builder(Component.translatable("gui.thisnotamod.pass_change_gu.button_empty"), e -> {
			if (true) {
				textstate.put("textin:PassChange", PassChange.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiButtonMessage(0, x, y, z, textstate));
				PassChangeGuiButtonMessage.handleButtonAction(entity, 0, x, y, z, textstate);
			}
		}).bounds(this.leftPos + 147, this.topPos + 70, 25, 20).build();
		guistate.put("button:button_empty", button_empty);
		this.addRenderableWidget(button_empty);
	}
}
