package net.code.thisnotamod.client.gui;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.gui.components.ImageButton;
import net.minecraft.client.gui.components.EditBox;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.world.inventory.PassChangeGuiNMenu;
import net.code.thisnotamod.network.PassChangeGuiNButtonMessage;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.HashMap;

import com.mojang.blaze3d.systems.RenderSystem;

public class PassChangeGuiNScreen extends AbstractContainerScreen<PassChangeGuiNMenu> {
	private final static HashMap<String, Object> guistate = PassChangeGuiNMenu.guistate;
	private final Level world;
	private final int x, y, z;
	private final Player entity;
	private final static HashMap<String, String> textstate = new HashMap<>();
	public static EditBox passChangeField;
	ImageButton imagebutton_pas_b_1;
	ImageButton imagebutton_pas_b_2;
	ImageButton imagebutton_pas_b_3;
	ImageButton imagebutton_pas_b_4;
	ImageButton imagebutton_pas_b_5;
	ImageButton imagebutton_pas_b_6;
	ImageButton imagebutton_pas_b_7;
	ImageButton imagebutton_pas_b_8;
	ImageButton imagebutton_pas_b_9;
	ImageButton imagebutton_pas_b_deny;
	ImageButton imagebutton_pas_b_0;
	ImageButton imagebutton_pas_b_access;

	public PassChangeGuiNScreen(PassChangeGuiNMenu container, Inventory inventory, Component text) {
		super(container, inventory, text);
		this.world = container.world;
		this.x = container.x;
		this.y = container.y;
		this.z = container.z;
		this.entity = container.entity;
		this.imageWidth = 134;
		this.imageHeight = 166;
	}

	@Override
	public void render(GuiGraphics guiGraphics, int mouseX, int mouseY, float partialTicks) {
		this.renderBackground(guiGraphics);
		super.render(guiGraphics, mouseX, mouseY, partialTicks);
		passChangeField.render(guiGraphics, mouseX, mouseY, partialTicks);
		this.renderTooltip(guiGraphics, mouseX, mouseY);
	}

	@Override
	protected void renderBg(GuiGraphics guiGraphics, float partialTicks, int gx, int gy) {
		RenderSystem.setShaderColor(1, 1, 1, 1);
		RenderSystem.enableBlend();
		RenderSystem.defaultBlendFunc();

		guiGraphics.blit(new ResourceLocation("thisnotamod:textures/screens/passlock_fronnt.png"), this.leftPos + 0, this.topPos + 4, 0, 0, 134, 160, 134, 160);

		RenderSystem.disableBlend();
	}

	@Override
	public boolean keyPressed(int key, int b, int c) {
		if (key == 256) {
			this.minecraft.player.closeContainer();
			return true;
		}
		if (passChangeField.isFocused())
			return passChangeField.keyPressed(key, b, c);
		return super.keyPressed(key, b, c);
	}

	@Override
	public void containerTick() {
		super.containerTick();
		passChangeField.tick();
	}

	@Override
	public void resize(Minecraft minecraft, int width, int height) {
		String passChangeFieldValue = passChangeField.getValue();
		super.resize(minecraft, width, height);
		passChangeField.setValue(passChangeFieldValue);
	}

	@Override
	protected void renderLabels(GuiGraphics guiGraphics, int mouseX, int mouseY) {
	}

	@Override
	public void init() {
		super.init();
		passChangeField = new EditBox(this.font, this.leftPos + 8, this.topPos + 24, 118, 18, Component.translatable("gui.thisnotamod.pass_change_gui_n.passChangeField"));
		passChangeField.setMaxLength(32767);
		guistate.put("text:passChangeField", passChangeField);
		this.addWidget(this.passChangeField);
		imagebutton_pas_b_1 = new ImageButton(this.leftPos + 6, this.topPos + 63, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_1.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(0, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 0, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_1", imagebutton_pas_b_1);
		this.addRenderableWidget(imagebutton_pas_b_1);
		imagebutton_pas_b_2 = new ImageButton(this.leftPos + 47, this.topPos + 63, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_2.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(1, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 1, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_2", imagebutton_pas_b_2);
		this.addRenderableWidget(imagebutton_pas_b_2);
		imagebutton_pas_b_3 = new ImageButton(this.leftPos + 88, this.topPos + 63, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_3.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(2, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 2, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_3", imagebutton_pas_b_3);
		this.addRenderableWidget(imagebutton_pas_b_3);
		imagebutton_pas_b_4 = new ImageButton(this.leftPos + 6, this.topPos + 84, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_4.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(3, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 3, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_4", imagebutton_pas_b_4);
		this.addRenderableWidget(imagebutton_pas_b_4);
		imagebutton_pas_b_5 = new ImageButton(this.leftPos + 47, this.topPos + 84, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_5.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(4, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 4, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_5", imagebutton_pas_b_5);
		this.addRenderableWidget(imagebutton_pas_b_5);
		imagebutton_pas_b_6 = new ImageButton(this.leftPos + 88, this.topPos + 84, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_6.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(5, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 5, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_6", imagebutton_pas_b_6);
		this.addRenderableWidget(imagebutton_pas_b_6);
		imagebutton_pas_b_7 = new ImageButton(this.leftPos + 6, this.topPos + 105, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_7.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(6, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 6, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_7", imagebutton_pas_b_7);
		this.addRenderableWidget(imagebutton_pas_b_7);
		imagebutton_pas_b_8 = new ImageButton(this.leftPos + 47, this.topPos + 105, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_8.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(7, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 7, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_8", imagebutton_pas_b_8);
		this.addRenderableWidget(imagebutton_pas_b_8);
		imagebutton_pas_b_9 = new ImageButton(this.leftPos + 88, this.topPos + 105, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_9.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(8, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 8, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_9", imagebutton_pas_b_9);
		this.addRenderableWidget(imagebutton_pas_b_9);
		imagebutton_pas_b_deny = new ImageButton(this.leftPos + 6, this.topPos + 126, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_deny.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(9, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 9, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_deny", imagebutton_pas_b_deny);
		this.addRenderableWidget(imagebutton_pas_b_deny);
		imagebutton_pas_b_0 = new ImageButton(this.leftPos + 47, this.topPos + 126, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_0.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(10, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 10, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_0", imagebutton_pas_b_0);
		this.addRenderableWidget(imagebutton_pas_b_0);
		imagebutton_pas_b_access = new ImageButton(this.leftPos + 88, this.topPos + 126, 40, 20, 0, 0, 20, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_pas_b_access.png"), 40, 40, e -> {
			if (true) {
				textstate.put("textin:passChangeField", passChangeField.getValue());
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new PassChangeGuiNButtonMessage(11, x, y, z, textstate));
				PassChangeGuiNButtonMessage.handleButtonAction(entity, 11, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_pas_b_access", imagebutton_pas_b_access);
		this.addRenderableWidget(imagebutton_pas_b_access);
	}
}
