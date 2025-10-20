package net.code.thisnotamod.client.gui;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.gui.components.Checkbox;
import net.minecraft.client.gui.components.Button;
import net.minecraft.client.gui.GuiGraphics;

import net.code.thisnotamod.world.inventory.DeliveryGuiMenu;
import net.code.thisnotamod.network.DeliveryGuiButtonMessage;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.HashMap;

import com.mojang.blaze3d.systems.RenderSystem;

public class DeliveryGuiScreen extends AbstractContainerScreen<DeliveryGuiMenu> {
	private final static HashMap<String, Object> guistate = DeliveryGuiMenu.guistate;
	private final Level world;
	private final int x, y, z;
	private final Player entity;
	private final static HashMap<String, String> textstate = new HashMap<>();
	public static Checkbox ArirPlush;
	public static Checkbox Music_disc_main;
	public static Checkbox Music_disc_winter;
	public static Checkbox WC;
	Button button_zakazat;

	public DeliveryGuiScreen(DeliveryGuiMenu container, Inventory inventory, Component text) {
		super(container, inventory, text);
		this.world = container.world;
		this.x = container.x;
		this.y = container.y;
		this.z = container.z;
		this.entity = container.entity;
		this.imageWidth = 410;
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

		guiGraphics.blit(new ResourceLocation("thisnotamod:textures/screens/placeholderback.png"), this.leftPos + 0, this.topPos + -17, 0, 0, 410, 200, 410, 200);

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
		button_zakazat = Button.builder(Component.translatable("gui.thisnotamod.delivery_gui.button_zakazat"), e -> {
			if (true) {
				textstate.put("checkboxin:ArirPlush", ArirPlush.selected() ? "true" : "false");
				textstate.put("checkboxin:Music_disc_main", Music_disc_main.selected() ? "true" : "false");
				textstate.put("checkboxin:Music_disc_winter", Music_disc_winter.selected() ? "true" : "false");
				textstate.put("checkboxin:WC", WC.selected() ? "true" : "false");
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new DeliveryGuiButtonMessage(0, x, y, z, textstate));
				DeliveryGuiButtonMessage.handleButtonAction(entity, 0, x, y, z, textstate);
			}
		}).bounds(this.leftPos + 335, this.topPos + 154, 67, 20).build();
		guistate.put("button:button_zakazat", button_zakazat);
		this.addRenderableWidget(button_zakazat);
		ArirPlush = new Checkbox(this.leftPos + 4, this.topPos + -4, 20, 20, Component.translatable("gui.thisnotamod.delivery_gui.ArirPlush"), false);
		guistate.put("checkbox:ArirPlush", ArirPlush);
		this.addRenderableWidget(ArirPlush);
		Music_disc_main = new Checkbox(this.leftPos + 4, this.topPos + 22, 20, 20, Component.translatable("gui.thisnotamod.delivery_gui.Music_disc_main"), false);
		guistate.put("checkbox:Music_disc_main", Music_disc_main);
		this.addRenderableWidget(Music_disc_main);
		Music_disc_winter = new Checkbox(this.leftPos + 4, this.topPos + 49, 20, 20, Component.translatable("gui.thisnotamod.delivery_gui.Music_disc_winter"), false);
		guistate.put("checkbox:Music_disc_winter", Music_disc_winter);
		this.addRenderableWidget(Music_disc_winter);
		WC = new Checkbox(this.leftPos + 4, this.topPos + 76, 20, 20, Component.translatable("gui.thisnotamod.delivery_gui.WC"), false);
		guistate.put("checkbox:WC", WC);
		this.addRenderableWidget(WC);
	}
}
