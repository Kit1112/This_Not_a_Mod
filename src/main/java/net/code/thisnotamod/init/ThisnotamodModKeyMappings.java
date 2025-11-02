
/*
 *	MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import org.lwjgl.glfw.GLFW;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.client.event.RegisterKeyMappingsEvent;
import net.minecraftforge.api.distmarker.Dist;

import net.minecraft.client.Minecraft;
import net.minecraft.client.KeyMapping;

import net.code.thisnotamod.network.OpenDebugMenuMessage;
import net.code.thisnotamod.ThisnotamodMod;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD, value = {Dist.CLIENT})
public class ThisnotamodModKeyMappings {
	public static final KeyMapping OPEN_DEBUG_MENU = new KeyMapping("key.thisnotamod.open_debug_menu", GLFW.GLFW_KEY_DELETE, "key.categories.ui") {
		private boolean isDownOld = false;

		@Override
		public void setDown(boolean isDown) {
			super.setDown(isDown);
			if (isDownOld != isDown && isDown) {
				ThisnotamodMod.PACKET_HANDLER.sendToServer(new OpenDebugMenuMessage(0, 0));
				OpenDebugMenuMessage.pressAction(Minecraft.getInstance().player, 0, 0);
			}
			isDownOld = isDown;
		}
	};

	@SubscribeEvent
	public static void registerKeyMappings(RegisterKeyMappingsEvent event) {
		event.register(OPEN_DEBUG_MENU);
	}

	@Mod.EventBusSubscriber({Dist.CLIENT})
	public static class KeyEventListener {
		@SubscribeEvent
		public static void onClientTick(TickEvent.ClientTickEvent event) {
			if (Minecraft.getInstance().screen == null) {
				OPEN_DEBUG_MENU.consumeClick();
			}
		}
	}
}
