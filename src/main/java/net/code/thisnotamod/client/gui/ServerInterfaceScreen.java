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
import java.util.Arrays;

import com.mojang.blaze3d.systems.RenderSystem;
import org.lwjgl.glfw.GLFW;

/**
 * Экран сервера с линией IN->ответы->OUT и отладочными хитбоксами.
 * Привязка ID к (digit,row): id = digit*8 + row; row = id % 8; digit = id / 8.
 */
public class ServerInterfaceScreen extends AbstractContainerScreen<ServerInterfaceMenu> {
	// guistate/textstate остаются совместимыми с MCreator
	private final static HashMap<String, Object> guistate = ServerInterfaceMenu.guistate;
	private final static HashMap<String, String> textstate = new HashMap<>();

	private final Level world;
	private final int x, y, z;
	private final Player entity;

	// Геометрия сетки кнопок (оставил как у тебя)
	private static final int COLS = 10;
	private static final int ROWS = 8;
	private static final int CELL_W = 16;
	private static final int CELL_H = 14;
	private static final int GRID_ORIGIN_X = 1;   // от leftPos
	private static final int GRID_ORIGIN_Y = 20;  // от topPos
	private static final int COL_STEP = 16;
	private static final int ROW_STEP = 16;

	// Смещение фона из renderBg (важно для якорей IN/OUT)
	private static final int BG_X_OFFSET = 0;
	private static final int BG_Y_OFFSET = 3;


	private static final int IN_ANCHOR_REL_X  = 81;
	private static final int IN_ANCHOR_REL_Y  = 15;
	private static final int OUT_ANCHOR_REL_X = 81;
	private static final int OUT_ANCHOR_REL_Y = 144;

	// Визуальные настройки линии
	private static final int LINE_COLOR_ARGB = 0xFFFF00FF; // фиолетовый, 100% альфа
	private static final int DEBUG_COLOR_ARGB = 0x66FF00FF; // фиолетовый с альфой
	private static final int LINE_THICKNESS = 2;            // толщина линии (пиксели)

	// Выборы по строкам (-1 = ничего не выбрано)
	private final int[] selectedByRow = new int[ROWS];

	// Кнопки (в матрице для удобства)
	private ImageButton[][] digitButtons = new ImageButton[COLS][ROWS];
	private ImageButton imagebutton_exitbutton;

	public ServerInterfaceScreen(ServerInterfaceMenu container, Inventory inventory, Component text) {
		super(container, inventory, text);
		this.world = container.world;
		this.x = container.x;
		this.y = container.y;
		this.z = container.z;
		this.entity = container.entity;
		this.imageWidth = 200;
		this.imageHeight = 166;

		Arrays.fill(this.selectedByRow, -1);
	}

	@Override
	public void render(GuiGraphics guiGraphics, int mouseX, int mouseY, float partialTicks) {
		this.renderBackground(guiGraphics);
		super.render(guiGraphics, mouseX, mouseY, partialTicks);
		this.renderTooltip(guiGraphics, mouseX, mouseY);

		// Рисуем линию поверх UI
		renderPath(guiGraphics);

	}

	@Override
	protected void renderBg(GuiGraphics guiGraphics, float partialTicks, int gx, int gy) {
		RenderSystem.setShaderColor(1, 1, 1, 1);
		RenderSystem.enableBlend();
		RenderSystem.defaultBlendFunc();

		// Фон — как у тебя (смещение Y +3 сохраняем)
		guiGraphics.blit(new ResourceLocation("thisnotamod:textures/screens/background.png"),
				this.leftPos + 0, this.topPos + 3, 0, 0, 200, 160, 200, 160);

		RenderSystem.disableBlend();
	}

	@Override
	protected void renderLabels(GuiGraphics guiGraphics, int mouseX, int mouseY) {
		// Тексты примеров справа — без изменений
		guiGraphics.drawString(this.font, ExampleOneProcedure.execute(entity),   172,  23, -4475136, false);
		guiGraphics.drawString(this.font, ExampleTwoProcedure.execute(entity),   172,  39, -4475136, false);
		guiGraphics.drawString(this.font, ExampleThreeProcedure.execute(entity), 172,  55, -4475136, false);
		guiGraphics.drawString(this.font, ExampleFourProcedure.execute(entity),  172,  71, -4475136, false);
		guiGraphics.drawString(this.font, ExampleFiveProcedure.execute(entity),  172,  87, -4475136, false);
		guiGraphics.drawString(this.font, ExampleSixProcedure.execute(entity),   172, 103, -4475136, false);
		guiGraphics.drawString(this.font, ExampleSevenProcedure.execute(entity), 172, 119, -4475136, false);
		guiGraphics.drawString(this.font, ExampleEightProcedure.execute(entity), 172, 135, -4475136, false);
	}

	@Override
public boolean keyPressed(int key, int scan, int modifiers) {
    if (key == org.lwjgl.glfw.GLFW.GLFW_KEY_ESCAPE) {
        if (this.minecraft != null && this.minecraft.player != null) {
            this.minecraft.player.closeContainer();
        }
        return true;
    }
    return super.keyPressed(key, scan, modifiers);
}


	@Override
	public void init() {
		super.init();

		// Генерация 10x8 кнопок одной петлёй
		for (int d = 0; d < COLS; d++) {
			for (int r = 0; r < ROWS; r++) {
				final int id = d * ROWS + r; // соответствует ServerInterfaceButtonMessage
				int bx = this.leftPos + GRID_ORIGIN_X + COL_STEP * d;
				int by = this.topPos + GRID_ORIGIN_Y + ROW_STEP * r;

				String atlasName = (r == 0)
						? "imagebutton_" + d + "butt.png"
						: "imagebutton_" + d + "butt" + r + ".png";

				ImageButton btn = new ImageButton(
						bx, by, CELL_W, CELL_H, 0, 0, CELL_H,
						new ResourceLocation("thisnotamod:textures/screens/atlas/" + atlasName),
						CELL_W, CELL_H * 2,
						e -> {
							// 1) Зафиксировать локально выбор для отрисовки линии
							onDigitClick(id);
							// 2) Синхронизация/вызов процедур — как у тебя
							ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(id, x, y, z, textstate));
							ServerInterfaceButtonMessage.handleButtonAction(entity, id, x, y, z, textstate);
						}
				);

				digitButtons[d][r] = btn;
				// Ключи в guistate оставлю совместимыми с генератором MCreator
				guistate.put("button:imagebutton_" + d + "butt" + (r == 0 ? "" : r), btn);
				this.addRenderableWidget(btn);
			}
		}

		// Exit — без изменений
		imagebutton_exitbutton = new ImageButton(this.leftPos + 161, this.topPos + 147, 39, 16, 0, 0, 16,
				new ResourceLocation("thisnotamod:textures/screens/atlas/imagebutton_exitbutton.png"),
				39, 32,
				e -> {
					ThisnotamodMod.PACKET_HANDLER.sendToServer(new ServerInterfaceButtonMessage(80, x, y, z, textstate));
					ServerInterfaceButtonMessage.handleButtonAction(entity, 80, x, y, z, textstate);
				});
		guistate.put("button:imagebutton_exitbutton", imagebutton_exitbutton);
		this.addRenderableWidget(imagebutton_exitbutton);
	}

	/* ==========================
	   ВНУТРЕННИЕ ВСПОМОГАТЕЛЬНЫЕ
	   ========================== */

	private void onDigitClick(int buttonId) {
		// 0..79 — наши кнопки; 80 — Exit
		if (buttonId < 0 || buttonId >= ROWS * COLS) return;

		int row = buttonId % ROWS;
		int digit = buttonId / ROWS;

		// Перезаписываем выбор для строки (можно менять ответ)
		selectedByRow[row] = digit;

		// При желании можно отправлять это и в textstate, если знаешь,
		// что дальше будешь читать это на сервере:
		// textstate.put("sel_row_" + row, Integer.toString(digit));
	}

	private int cellCenterX(int digit) {
		return this.leftPos + GRID_ORIGIN_X + COL_STEP * digit + (CELL_W / 2);
	}
	private int cellCenterY(int row) {
		return this.topPos + GRID_ORIGIN_Y + ROW_STEP * row + (CELL_H / 2);
	}

	private int inAnchorAbsX() {
		return this.leftPos + BG_X_OFFSET + IN_ANCHOR_REL_X;
	}
	private int inAnchorAbsY() {
		return this.topPos + BG_Y_OFFSET + IN_ANCHOR_REL_Y;
	}
	private int outAnchorAbsX() {
		return this.leftPos + BG_X_OFFSET + OUT_ANCHOR_REL_X;
	}
	private int outAnchorAbsY() {
		return this.topPos + BG_Y_OFFSET + OUT_ANCHOR_REL_Y;
	}

	private void renderPath(GuiGraphics g) {
		// Начинаем от IN
		int lastX = inAnchorAbsX();
		int lastY = inAnchorAbsY();

		boolean any = false;
		// Идём сверху вниз, останавливаемся на первой неполной строке
		for (int r = 0; r < ROWS; r++) {
			int d = selectedByRow[r];
			if (d == -1) break; // последовательность оборвана
			int cx = cellCenterX(d);
			int cy = cellCenterY(r);
			drawThickLine(g, lastX, lastY, cx, cy, LINE_COLOR_ARGB, LINE_THICKNESS);
			lastX = cx;
			lastY = cy;
			any = true;
		}

		// Если все выбраны — замыкаем в OUT
		boolean allFilled = true;
		for (int r = 0; r < ROWS; r++) if (selectedByRow[r] == -1) { allFilled = false; break; }
		if (any && allFilled) {
			drawThickLine(g, lastX, lastY, outAnchorAbsX(), outAnchorAbsY(), LINE_COLOR_ARGB, LINE_THICKNESS);
		}
	}


	/**
	 * Простая DDA-линия толщиной thickness (в пикселях), без GL-линий — кросс‑версия.
	 */
	private void drawThickLine(GuiGraphics g, int x1, int y1, int x2, int y2, int argb, int thickness) {
		int dx = x2 - x1;
		int dy = y2 - y1;
		int steps = Math.max(Math.abs(dx), Math.abs(dy));
		if (steps <= 0) {
			int half = thickness / 2;
			g.fill(x1 - half, y1 - half, x1 - half + Math.max(1, thickness), y1 - half + Math.max(1, thickness), argb);
			return;
		}
		double ix = dx / (double) steps;
		double iy = dy / (double) steps;
		double x = x1;
		double y = y1;
		int half = thickness / 2;
		int pad  = (thickness % 2 == 0) ? half : half + 1;

		for (int i = 0; i <= steps; i++) {
			int rx = (int) Math.round(x);
			int ry = (int) Math.round(y);
			g.fill(rx - half, ry - half, rx + pad, ry + pad, argb);
			x += ix;
			y += iy;
		}
	}
}
