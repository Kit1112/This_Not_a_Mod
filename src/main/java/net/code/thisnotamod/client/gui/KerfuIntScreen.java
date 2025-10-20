package net.code.thisnotamod.client.gui;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.gui.components.ImageButton;
import net.minecraft.client.gui.GuiGraphics;

import net.code.thisnotamod.world.inventory.KerfuIntMenu;
import net.code.thisnotamod.network.KerfuIntButtonMessage;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.HashMap;

import com.mojang.blaze3d.systems.RenderSystem;

public class KerfuIntScreen extends AbstractContainerScreen<KerfuIntMenu> {
	private final static HashMap<String, Object> guistate = KerfuIntMenu.guistate;
	private final Level world;
	private final int x, y, z;
	private final Player entity;
	private final static HashMap<String, String> textstate = new HashMap<>();
	ImageButton imagebutton_button_kerfu;
	ImageButton imagebutton_button_kerfu1;
	ImageButton imagebutton_button_kerfu2;
	ImageButton imagebutton_button_kerfu3;
	ImageButton imagebutton_button_kerfu4;
	ImageButton imagebutton_button_kerfu5;

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
		guiGraphics.drawString(this.font, Component.translatable("gui.thisnotamod.kerfu_int.label_riemont"), 26, 75, -14935783, false);
		guiGraphics.drawString(this.font, Component.translatable("gui.thisnotamod.kerfu_int.label_patrulirovaniie"), 24, 94, -15133162, false);
		guiGraphics.drawString(this.font, Component.translatable("gui.thisnotamod.kerfu_int.label_sliedovaniie"), 14, 113, -15133162, false);
		guiGraphics.drawString(this.font, Component.translatable("gui.thisnotamod.kerfu_int.label_poghladit"), 18, 132, -15133162, false);
		guiGraphics.drawString(this.font, Component.translatable("gui.thisnotamod.kerfu_int.label_ozhidaniie"), 20, 56, -15133162, false);
		guiGraphics.drawString(this.font, Component.translatable("gui.thisnotamod.kerfu_int.label_vykliuchit"), 17, 151, -15133162, false);
	}

	@Override
	public void init() {
		super.init();
		imagebutton_button_kerfu = new ImageButton(this.leftPos + 0, this.topPos + 70, 86, 19, 0, 0, 19, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_button_kerfu.png"), 86, 38, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new KerfuIntButtonMessage(0, x, y, z, textstate));
				KerfuIntButtonMessage.handleButtonAction(entity, 0, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_button_kerfu", imagebutton_button_kerfu);
		this.addRenderableWidget(imagebutton_button_kerfu);
		imagebutton_button_kerfu1 = new ImageButton(this.leftPos + 0, this.topPos + 89, 86, 19, 0, 0, 19, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_button_kerfu1.png"), 86, 38, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new KerfuIntButtonMessage(1, x, y, z, textstate));
				KerfuIntButtonMessage.handleButtonAction(entity, 1, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_button_kerfu1", imagebutton_button_kerfu1);
		this.addRenderableWidget(imagebutton_button_kerfu1);
		imagebutton_button_kerfu2 = new ImageButton(this.leftPos + 0, this.topPos + 108, 86, 19, 0, 0, 19, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_button_kerfu2.png"), 86, 38, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new KerfuIntButtonMessage(2, x, y, z, textstate));
				KerfuIntButtonMessage.handleButtonAction(entity, 2, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_button_kerfu2", imagebutton_button_kerfu2);
		this.addRenderableWidget(imagebutton_button_kerfu2);
		imagebutton_button_kerfu3 = new ImageButton(this.leftPos + 0, this.topPos + 127, 86, 19, 0, 0, 19, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_button_kerfu3.png"), 86, 38, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new KerfuIntButtonMessage(3, x, y, z, textstate));
				KerfuIntButtonMessage.handleButtonAction(entity, 3, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_button_kerfu3", imagebutton_button_kerfu3);
		this.addRenderableWidget(imagebutton_button_kerfu3);
		imagebutton_button_kerfu4 = new ImageButton(this.leftPos + 0, this.topPos + 51, 86, 19, 0, 0, 19, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_button_kerfu4.png"), 86, 38, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new KerfuIntButtonMessage(4, x, y, z, textstate));
				KerfuIntButtonMessage.handleButtonAction(entity, 4, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_button_kerfu4", imagebutton_button_kerfu4);
		this.addRenderableWidget(imagebutton_button_kerfu4);
		imagebutton_button_kerfu5 = new ImageButton(this.leftPos + 0, this.topPos + 146, 86, 19, 0, 0, 19, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_button_kerfu5.png"), 86, 38, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new KerfuIntButtonMessage(5, x, y, z, textstate));
				KerfuIntButtonMessage.handleButtonAction(entity, 5, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_button_kerfu5", imagebutton_button_kerfu5);
		this.addRenderableWidget(imagebutton_button_kerfu5);
	}
}
