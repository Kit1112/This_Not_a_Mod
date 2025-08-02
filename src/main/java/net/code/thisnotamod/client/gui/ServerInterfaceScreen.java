package net.code.thisnotamod.client.gui;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.gui.screens.inventory.AbstractContainerScreen;
import net.minecraft.client.gui.components.ImageButton;
import net.minecraft.client.gui.GuiGraphics;

import net.code.thisnotamod.world.inventory.ServerInterfaceMenu;
import net.code.thisnotamod.procedures.ExampleTwoProcedure;
import net.code.thisnotamod.procedures.ExampleThreeProcedure;
import net.code.thisnotamod.procedures.ExampleSixProcedure;
import net.code.thisnotamod.procedures.ExampleSevenProcedure;
import net.code.thisnotamod.procedures.ExampleOneProcedure;
import net.code.thisnotamod.procedures.ExampleFourProcedure;
import net.code.thisnotamod.procedures.ExampleFiveProcedure;
import net.code.thisnotamod.procedures.ExampleEightProcedure;
import net.code.thisnotamod.network.ServerInterfaceButtonMessage;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.HashMap;

import com.mojang.blaze3d.systems.RenderSystem;

public class ServerInterfaceScreen extends AbstractContainerScreen<ServerInterfaceMenu> {
	private final static HashMap<String, Object> guistate = ServerInterfaceMenu.guistate;
	private final Level world;
	private final int x, y, z;
	private final Player entity;
	private final static HashMap<String, String> textstate = new HashMap<>();
	ImageButton imagebutton_0butt;
	ImageButton imagebutton_0butt1;
	ImageButton imagebutton_0butt2;
	ImageButton imagebutton_0butt3;
	ImageButton imagebutton_0butt4;
	ImageButton imagebutton_0butt5;
	ImageButton imagebutton_0butt6;
	ImageButton imagebutton_0butt7;
	ImageButton imagebutton_1butt;
	ImageButton imagebutton_1butt1;
	ImageButton imagebutton_1butt2;
	ImageButton imagebutton_1butt3;
	ImageButton imagebutton_1butt4;
	ImageButton imagebutton_1butt5;
	ImageButton imagebutton_1butt6;
	ImageButton imagebutton_1butt7;
	ImageButton imagebutton_2butt;
	ImageButton imagebutton_2butt1;
	ImageButton imagebutton_2butt2;
	ImageButton imagebutton_2butt3;
	ImageButton imagebutton_2butt4;
	ImageButton imagebutton_2butt5;
	ImageButton imagebutton_2butt6;
	ImageButton imagebutton_2butt7;
	ImageButton imagebutton_3butt;
	ImageButton imagebutton_3butt1;
	ImageButton imagebutton_3butt2;
	ImageButton imagebutton_3butt3;
	ImageButton imagebutton_3butt4;
	ImageButton imagebutton_3butt5;
	ImageButton imagebutton_3butt6;
	ImageButton imagebutton_3butt7;
	ImageButton imagebutton_4butt;
	ImageButton imagebutton_4butt1;
	ImageButton imagebutton_4butt2;
	ImageButton imagebutton_4butt3;
	ImageButton imagebutton_4butt4;
	ImageButton imagebutton_4butt5;
	ImageButton imagebutton_4butt6;
	ImageButton imagebutton_4butt7;
	ImageButton imagebutton_5butt;
	ImageButton imagebutton_5butt1;
	ImageButton imagebutton_5butt2;
	ImageButton imagebutton_5butt3;
	ImageButton imagebutton_5butt4;
	ImageButton imagebutton_5butt5;
	ImageButton imagebutton_5butt6;
	ImageButton imagebutton_5butt7;
	ImageButton imagebutton_6butt;
	ImageButton imagebutton_6butt1;
	ImageButton imagebutton_6butt2;
	ImageButton imagebutton_6butt3;
	ImageButton imagebutton_6butt4;
	ImageButton imagebutton_6butt5;
	ImageButton imagebutton_6butt6;
	ImageButton imagebutton_6butt7;
	ImageButton imagebutton_7butt;
	ImageButton imagebutton_7butt1;
	ImageButton imagebutton_7butt2;
	ImageButton imagebutton_7butt3;
	ImageButton imagebutton_7butt4;
	ImageButton imagebutton_7butt5;
	ImageButton imagebutton_7butt6;
	ImageButton imagebutton_7butt7;
	ImageButton imagebutton_8butt;
	ImageButton imagebutton_8butt1;
	ImageButton imagebutton_8butt2;
	ImageButton imagebutton_8butt3;
	ImageButton imagebutton_8butt4;
	ImageButton imagebutton_8butt5;
	ImageButton imagebutton_8butt6;
	ImageButton imagebutton_8butt7;
	ImageButton imagebutton_9butt;
	ImageButton imagebutton_9butt1;
	ImageButton imagebutton_9butt2;
	ImageButton imagebutton_9butt3;
	ImageButton imagebutton_9butt4;
	ImageButton imagebutton_9butt5;
	ImageButton imagebutton_9butt6;
	ImageButton imagebutton_9butt7;
	ImageButton imagebutton_exitbutton;

	public ServerInterfaceScreen(ServerInterfaceMenu container, Inventory inventory, Component text) {
		super(container, inventory, text);
		this.world = container.world;
		this.x = container.x;
		this.y = container.y;
		this.z = container.z;
		this.entity = container.entity;
		this.imageWidth = 200;
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

		guiGraphics.blit(new ResourceLocation("thisnotamod:textures/screens/background.png"), this.leftPos + 0, this.topPos + 3, 0, 0, 200, 160, 200, 160);

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
		guiGraphics.drawString(this.font,

				ExampleOneProcedure.execute(entity), 172, 23, -4475136, false);
		guiGraphics.drawString(this.font,

				ExampleTwoProcedure.execute(entity), 172, 39, -4475136, false);
		guiGraphics.drawString(this.font,

				ExampleThreeProcedure.execute(entity), 172, 55, -4475136, false);
		guiGraphics.drawString(this.font,

				ExampleFourProcedure.execute(entity), 172, 71, -4475136, false);
		guiGraphics.drawString(this.font,

				ExampleFiveProcedure.execute(entity), 172, 87, -4475136, false);
		guiGraphics.drawString(this.font,

				ExampleSixProcedure.execute(entity), 172, 103, -4475136, false);
		guiGraphics.drawString(this.font,

				ExampleSevenProcedure.execute(entity), 172, 119, -4475136, false);
		guiGraphics.drawString(this.font,

				ExampleEightProcedure.execute(entity), 172, 135, -4475136, false);
	}

	@Override
	public void init() {
		super.init();
		imagebutton_0butt = new ImageButton(this.leftPos + 1, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_0butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(0, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 0, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_0butt", imagebutton_0butt);
		this.addRenderableWidget(imagebutton_0butt);
		imagebutton_0butt1 = new ImageButton(this.leftPos + 1, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_0butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(1, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 1, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_0butt1", imagebutton_0butt1);
		this.addRenderableWidget(imagebutton_0butt1);
		imagebutton_0butt2 = new ImageButton(this.leftPos + 1, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_0butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(2, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 2, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_0butt2", imagebutton_0butt2);
		this.addRenderableWidget(imagebutton_0butt2);
		imagebutton_0butt3 = new ImageButton(this.leftPos + 1, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_0butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(3, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 3, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_0butt3", imagebutton_0butt3);
		this.addRenderableWidget(imagebutton_0butt3);
		imagebutton_0butt4 = new ImageButton(this.leftPos + 1, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_0butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(4, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 4, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_0butt4", imagebutton_0butt4);
		this.addRenderableWidget(imagebutton_0butt4);
		imagebutton_0butt5 = new ImageButton(this.leftPos + 1, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_0butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(5, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 5, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_0butt5", imagebutton_0butt5);
		this.addRenderableWidget(imagebutton_0butt5);
		imagebutton_0butt6 = new ImageButton(this.leftPos + 1, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_0butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(6, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 6, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_0butt6", imagebutton_0butt6);
		this.addRenderableWidget(imagebutton_0butt6);
		imagebutton_0butt7 = new ImageButton(this.leftPos + 1, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_0butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(7, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 7, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_0butt7", imagebutton_0butt7);
		this.addRenderableWidget(imagebutton_0butt7);
		imagebutton_1butt = new ImageButton(this.leftPos + 17, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_1butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(8, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 8, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_1butt", imagebutton_1butt);
		this.addRenderableWidget(imagebutton_1butt);
		imagebutton_1butt1 = new ImageButton(this.leftPos + 17, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_1butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(9, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 9, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_1butt1", imagebutton_1butt1);
		this.addRenderableWidget(imagebutton_1butt1);
		imagebutton_1butt2 = new ImageButton(this.leftPos + 17, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_1butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(10, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 10, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_1butt2", imagebutton_1butt2);
		this.addRenderableWidget(imagebutton_1butt2);
		imagebutton_1butt3 = new ImageButton(this.leftPos + 17, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_1butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(11, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 11, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_1butt3", imagebutton_1butt3);
		this.addRenderableWidget(imagebutton_1butt3);
		imagebutton_1butt4 = new ImageButton(this.leftPos + 17, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_1butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(12, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 12, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_1butt4", imagebutton_1butt4);
		this.addRenderableWidget(imagebutton_1butt4);
		imagebutton_1butt5 = new ImageButton(this.leftPos + 17, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_1butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(13, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 13, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_1butt5", imagebutton_1butt5);
		this.addRenderableWidget(imagebutton_1butt5);
		imagebutton_1butt6 = new ImageButton(this.leftPos + 17, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_1butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(14, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 14, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_1butt6", imagebutton_1butt6);
		this.addRenderableWidget(imagebutton_1butt6);
		imagebutton_1butt7 = new ImageButton(this.leftPos + 17, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_1butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(15, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 15, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_1butt7", imagebutton_1butt7);
		this.addRenderableWidget(imagebutton_1butt7);
		imagebutton_2butt = new ImageButton(this.leftPos + 33, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_2butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(16, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 16, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_2butt", imagebutton_2butt);
		this.addRenderableWidget(imagebutton_2butt);
		imagebutton_2butt1 = new ImageButton(this.leftPos + 33, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_2butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(17, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 17, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_2butt1", imagebutton_2butt1);
		this.addRenderableWidget(imagebutton_2butt1);
		imagebutton_2butt2 = new ImageButton(this.leftPos + 33, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_2butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(18, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 18, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_2butt2", imagebutton_2butt2);
		this.addRenderableWidget(imagebutton_2butt2);
		imagebutton_2butt3 = new ImageButton(this.leftPos + 33, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_2butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(19, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 19, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_2butt3", imagebutton_2butt3);
		this.addRenderableWidget(imagebutton_2butt3);
		imagebutton_2butt4 = new ImageButton(this.leftPos + 33, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_2butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(20, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 20, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_2butt4", imagebutton_2butt4);
		this.addRenderableWidget(imagebutton_2butt4);
		imagebutton_2butt5 = new ImageButton(this.leftPos + 33, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_2butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(21, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 21, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_2butt5", imagebutton_2butt5);
		this.addRenderableWidget(imagebutton_2butt5);
		imagebutton_2butt6 = new ImageButton(this.leftPos + 33, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_2butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(22, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 22, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_2butt6", imagebutton_2butt6);
		this.addRenderableWidget(imagebutton_2butt6);
		imagebutton_2butt7 = new ImageButton(this.leftPos + 33, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_2butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(23, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 23, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_2butt7", imagebutton_2butt7);
		this.addRenderableWidget(imagebutton_2butt7);
		imagebutton_3butt = new ImageButton(this.leftPos + 49, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_3butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(24, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 24, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_3butt", imagebutton_3butt);
		this.addRenderableWidget(imagebutton_3butt);
		imagebutton_3butt1 = new ImageButton(this.leftPos + 49, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_3butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(25, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 25, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_3butt1", imagebutton_3butt1);
		this.addRenderableWidget(imagebutton_3butt1);
		imagebutton_3butt2 = new ImageButton(this.leftPos + 49, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_3butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(26, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 26, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_3butt2", imagebutton_3butt2);
		this.addRenderableWidget(imagebutton_3butt2);
		imagebutton_3butt3 = new ImageButton(this.leftPos + 49, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_3butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(27, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 27, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_3butt3", imagebutton_3butt3);
		this.addRenderableWidget(imagebutton_3butt3);
		imagebutton_3butt4 = new ImageButton(this.leftPos + 49, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_3butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(28, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 28, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_3butt4", imagebutton_3butt4);
		this.addRenderableWidget(imagebutton_3butt4);
		imagebutton_3butt5 = new ImageButton(this.leftPos + 49, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_3butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(29, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 29, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_3butt5", imagebutton_3butt5);
		this.addRenderableWidget(imagebutton_3butt5);
		imagebutton_3butt6 = new ImageButton(this.leftPos + 49, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_3butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(30, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 30, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_3butt6", imagebutton_3butt6);
		this.addRenderableWidget(imagebutton_3butt6);
		imagebutton_3butt7 = new ImageButton(this.leftPos + 49, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_3butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(31, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 31, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_3butt7", imagebutton_3butt7);
		this.addRenderableWidget(imagebutton_3butt7);
		imagebutton_4butt = new ImageButton(this.leftPos + 65, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_4butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(32, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 32, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_4butt", imagebutton_4butt);
		this.addRenderableWidget(imagebutton_4butt);
		imagebutton_4butt1 = new ImageButton(this.leftPos + 65, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_4butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(33, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 33, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_4butt1", imagebutton_4butt1);
		this.addRenderableWidget(imagebutton_4butt1);
		imagebutton_4butt2 = new ImageButton(this.leftPos + 65, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_4butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(34, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 34, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_4butt2", imagebutton_4butt2);
		this.addRenderableWidget(imagebutton_4butt2);
		imagebutton_4butt3 = new ImageButton(this.leftPos + 65, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_4butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(35, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 35, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_4butt3", imagebutton_4butt3);
		this.addRenderableWidget(imagebutton_4butt3);
		imagebutton_4butt4 = new ImageButton(this.leftPos + 65, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_4butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(36, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 36, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_4butt4", imagebutton_4butt4);
		this.addRenderableWidget(imagebutton_4butt4);
		imagebutton_4butt5 = new ImageButton(this.leftPos + 65, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_4butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(37, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 37, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_4butt5", imagebutton_4butt5);
		this.addRenderableWidget(imagebutton_4butt5);
		imagebutton_4butt6 = new ImageButton(this.leftPos + 65, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_4butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(38, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 38, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_4butt6", imagebutton_4butt6);
		this.addRenderableWidget(imagebutton_4butt6);
		imagebutton_4butt7 = new ImageButton(this.leftPos + 65, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_4butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(39, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 39, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_4butt7", imagebutton_4butt7);
		this.addRenderableWidget(imagebutton_4butt7);
		imagebutton_5butt = new ImageButton(this.leftPos + 81, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_5butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(40, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 40, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_5butt", imagebutton_5butt);
		this.addRenderableWidget(imagebutton_5butt);
		imagebutton_5butt1 = new ImageButton(this.leftPos + 81, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_5butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(41, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 41, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_5butt1", imagebutton_5butt1);
		this.addRenderableWidget(imagebutton_5butt1);
		imagebutton_5butt2 = new ImageButton(this.leftPos + 81, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_5butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(42, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 42, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_5butt2", imagebutton_5butt2);
		this.addRenderableWidget(imagebutton_5butt2);
		imagebutton_5butt3 = new ImageButton(this.leftPos + 81, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_5butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(43, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 43, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_5butt3", imagebutton_5butt3);
		this.addRenderableWidget(imagebutton_5butt3);
		imagebutton_5butt4 = new ImageButton(this.leftPos + 81, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_5butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(44, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 44, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_5butt4", imagebutton_5butt4);
		this.addRenderableWidget(imagebutton_5butt4);
		imagebutton_5butt5 = new ImageButton(this.leftPos + 81, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_5butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(45, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 45, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_5butt5", imagebutton_5butt5);
		this.addRenderableWidget(imagebutton_5butt5);
		imagebutton_5butt6 = new ImageButton(this.leftPos + 81, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_5butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(46, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 46, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_5butt6", imagebutton_5butt6);
		this.addRenderableWidget(imagebutton_5butt6);
		imagebutton_5butt7 = new ImageButton(this.leftPos + 81, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_5butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(47, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 47, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_5butt7", imagebutton_5butt7);
		this.addRenderableWidget(imagebutton_5butt7);
		imagebutton_6butt = new ImageButton(this.leftPos + 97, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_6butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(48, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 48, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_6butt", imagebutton_6butt);
		this.addRenderableWidget(imagebutton_6butt);
		imagebutton_6butt1 = new ImageButton(this.leftPos + 97, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_6butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(49, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 49, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_6butt1", imagebutton_6butt1);
		this.addRenderableWidget(imagebutton_6butt1);
		imagebutton_6butt2 = new ImageButton(this.leftPos + 97, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_6butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(50, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 50, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_6butt2", imagebutton_6butt2);
		this.addRenderableWidget(imagebutton_6butt2);
		imagebutton_6butt3 = new ImageButton(this.leftPos + 97, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_6butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(51, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 51, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_6butt3", imagebutton_6butt3);
		this.addRenderableWidget(imagebutton_6butt3);
		imagebutton_6butt4 = new ImageButton(this.leftPos + 97, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_6butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(52, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 52, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_6butt4", imagebutton_6butt4);
		this.addRenderableWidget(imagebutton_6butt4);
		imagebutton_6butt5 = new ImageButton(this.leftPos + 97, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_6butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(53, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 53, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_6butt5", imagebutton_6butt5);
		this.addRenderableWidget(imagebutton_6butt5);
		imagebutton_6butt6 = new ImageButton(this.leftPos + 97, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_6butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(54, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 54, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_6butt6", imagebutton_6butt6);
		this.addRenderableWidget(imagebutton_6butt6);
		imagebutton_6butt7 = new ImageButton(this.leftPos + 97, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_6butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(55, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 55, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_6butt7", imagebutton_6butt7);
		this.addRenderableWidget(imagebutton_6butt7);
		imagebutton_7butt = new ImageButton(this.leftPos + 113, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_7butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(56, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 56, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_7butt", imagebutton_7butt);
		this.addRenderableWidget(imagebutton_7butt);
		imagebutton_7butt1 = new ImageButton(this.leftPos + 113, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_7butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(57, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 57, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_7butt1", imagebutton_7butt1);
		this.addRenderableWidget(imagebutton_7butt1);
		imagebutton_7butt2 = new ImageButton(this.leftPos + 113, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_7butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(58, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 58, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_7butt2", imagebutton_7butt2);
		this.addRenderableWidget(imagebutton_7butt2);
		imagebutton_7butt3 = new ImageButton(this.leftPos + 113, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_7butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(59, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 59, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_7butt3", imagebutton_7butt3);
		this.addRenderableWidget(imagebutton_7butt3);
		imagebutton_7butt4 = new ImageButton(this.leftPos + 113, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_7butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(60, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 60, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_7butt4", imagebutton_7butt4);
		this.addRenderableWidget(imagebutton_7butt4);
		imagebutton_7butt5 = new ImageButton(this.leftPos + 113, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_7butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(61, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 61, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_7butt5", imagebutton_7butt5);
		this.addRenderableWidget(imagebutton_7butt5);
		imagebutton_7butt6 = new ImageButton(this.leftPos + 113, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_7butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(62, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 62, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_7butt6", imagebutton_7butt6);
		this.addRenderableWidget(imagebutton_7butt6);
		imagebutton_7butt7 = new ImageButton(this.leftPos + 113, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_7butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(63, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 63, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_7butt7", imagebutton_7butt7);
		this.addRenderableWidget(imagebutton_7butt7);
		imagebutton_8butt = new ImageButton(this.leftPos + 129, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_8butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(64, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 64, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_8butt", imagebutton_8butt);
		this.addRenderableWidget(imagebutton_8butt);
		imagebutton_8butt1 = new ImageButton(this.leftPos + 129, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_8butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(65, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 65, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_8butt1", imagebutton_8butt1);
		this.addRenderableWidget(imagebutton_8butt1);
		imagebutton_8butt2 = new ImageButton(this.leftPos + 129, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_8butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(66, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 66, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_8butt2", imagebutton_8butt2);
		this.addRenderableWidget(imagebutton_8butt2);
		imagebutton_8butt3 = new ImageButton(this.leftPos + 129, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_8butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(67, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 67, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_8butt3", imagebutton_8butt3);
		this.addRenderableWidget(imagebutton_8butt3);
		imagebutton_8butt4 = new ImageButton(this.leftPos + 129, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_8butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(68, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 68, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_8butt4", imagebutton_8butt4);
		this.addRenderableWidget(imagebutton_8butt4);
		imagebutton_8butt5 = new ImageButton(this.leftPos + 129, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_8butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(69, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 69, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_8butt5", imagebutton_8butt5);
		this.addRenderableWidget(imagebutton_8butt5);
		imagebutton_8butt6 = new ImageButton(this.leftPos + 129, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_8butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(70, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 70, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_8butt6", imagebutton_8butt6);
		this.addRenderableWidget(imagebutton_8butt6);
		imagebutton_8butt7 = new ImageButton(this.leftPos + 129, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_8butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(71, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 71, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_8butt7", imagebutton_8butt7);
		this.addRenderableWidget(imagebutton_8butt7);
		imagebutton_9butt = new ImageButton(this.leftPos + 145, this.topPos + 20, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_9butt.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(72, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 72, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_9butt", imagebutton_9butt);
		this.addRenderableWidget(imagebutton_9butt);
		imagebutton_9butt1 = new ImageButton(this.leftPos + 145, this.topPos + 36, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_9butt1.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(73, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 73, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_9butt1", imagebutton_9butt1);
		this.addRenderableWidget(imagebutton_9butt1);
		imagebutton_9butt2 = new ImageButton(this.leftPos + 145, this.topPos + 52, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_9butt2.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(74, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 74, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_9butt2", imagebutton_9butt2);
		this.addRenderableWidget(imagebutton_9butt2);
		imagebutton_9butt3 = new ImageButton(this.leftPos + 145, this.topPos + 68, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_9butt3.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(75, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 75, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_9butt3", imagebutton_9butt3);
		this.addRenderableWidget(imagebutton_9butt3);
		imagebutton_9butt4 = new ImageButton(this.leftPos + 145, this.topPos + 84, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_9butt4.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(76, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 76, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_9butt4", imagebutton_9butt4);
		this.addRenderableWidget(imagebutton_9butt4);
		imagebutton_9butt5 = new ImageButton(this.leftPos + 145, this.topPos + 100, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_9butt5.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(77, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 77, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_9butt5", imagebutton_9butt5);
		this.addRenderableWidget(imagebutton_9butt5);
		imagebutton_9butt6 = new ImageButton(this.leftPos + 145, this.topPos + 116, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_9butt6.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(78, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 78, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_9butt6", imagebutton_9butt6);
		this.addRenderableWidget(imagebutton_9butt6);
		imagebutton_9butt7 = new ImageButton(this.leftPos + 145, this.topPos + 132, 16, 14, 0, 0, 14, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_9butt7.png"), 16, 28, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(79, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 79, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_9butt7", imagebutton_9butt7);
		this.addRenderableWidget(imagebutton_9butt7);
		imagebutton_exitbutton = new ImageButton(this.leftPos + 161, this.topPos + 147, 39, 16, 0, 0, 16, new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_exitbutton.png"), 39, 32, e -> {
			if (true) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(80, x, y, z, textstate));
				ServerInterfaceButtonMessage.handleButtonAction(entity, 80, x, y, z, textstate);
			}
		});
		guistate.put("button:imagebutton_exitbutton", imagebutton_exitbutton);
		this.addRenderableWidget(imagebutton_exitbutton);
	}
}
