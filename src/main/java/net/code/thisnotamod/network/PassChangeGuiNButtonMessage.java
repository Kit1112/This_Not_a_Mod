
package net.code.thisnotamod.network;

import net.minecraftforge.network.NetworkEvent;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.network.chat.Component;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.world.inventory.PassChangeGuiNMenu;
import net.code.thisnotamod.procedures.PassChangeXbProcedure;
import net.code.thisnotamod.procedures.PassChangeOkBProcedure;
import net.code.thisnotamod.procedures.PassChange9bProcedure;
import net.code.thisnotamod.procedures.PassChange8bProcedure;
import net.code.thisnotamod.procedures.PassChange7bProcedure;
import net.code.thisnotamod.procedures.PassChange6bProcedure;
import net.code.thisnotamod.procedures.PassChange5bProcedure;
import net.code.thisnotamod.procedures.PassChange4bProcedure;
import net.code.thisnotamod.procedures.PassChange3bProcedure;
import net.code.thisnotamod.procedures.PassChange2bProcedure;
import net.code.thisnotamod.procedures.PassChange1bProcedure;
import net.code.thisnotamod.procedures.PassChange0bProcedure;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.function.Supplier;
import java.util.Map;
import java.util.HashMap;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class PassChangeGuiNButtonMessage {
	private final int buttonID, x, y, z;
	private HashMap<String, String> textstate;

	public PassChangeGuiNButtonMessage(FriendlyByteBuf buffer) {
		this.buttonID = buffer.readInt();
		this.x = buffer.readInt();
		this.y = buffer.readInt();
		this.z = buffer.readInt();
		this.textstate = readTextState(buffer);
	}

	public PassChangeGuiNButtonMessage(int buttonID, int x, int y, int z, HashMap<String, String> textstate) {
		this.buttonID = buttonID;
		this.x = x;
		this.y = y;
		this.z = z;
		this.textstate = textstate;

	}

	public static void buffer(PassChangeGuiNButtonMessage message, FriendlyByteBuf buffer) {
		buffer.writeInt(message.buttonID);
		buffer.writeInt(message.x);
		buffer.writeInt(message.y);
		buffer.writeInt(message.z);
		writeTextState(message.textstate, buffer);
	}

	public static void handler(PassChangeGuiNButtonMessage message, Supplier<NetworkEvent.Context> contextSupplier) {
		NetworkEvent.Context context = contextSupplier.get();
		context.enqueueWork(() -> {
			Player entity = context.getSender();
			int buttonID = message.buttonID;
			int x = message.x;
			int y = message.y;
			int z = message.z;
			HashMap<String, String> textstate = message.textstate;
			handleButtonAction(entity, buttonID, x, y, z, textstate);
		});
		context.setPacketHandled(true);
	}

	public static void handleButtonAction(Player entity, int buttonID, int x, int y, int z, HashMap<String, String> textstate) {
		Level world = entity.level();
		HashMap guistate = PassChangeGuiNMenu.guistate;
		for (Map.Entry<String, String> entry : textstate.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			guistate.put(key, value);
		}
		// security measure to prevent arbitrary chunk generation
		if (!world.hasChunkAt(new BlockPos(x, y, z)))
			return;
		if (buttonID == 0) {

			PassChange1bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 1) {

			PassChange2bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 2) {

			PassChange3bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 3) {

			PassChange4bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 4) {

			PassChange5bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 5) {

			PassChange6bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 6) {

			PassChange7bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 7) {

			PassChange8bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 8) {

			PassChange9bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 9) {

			PassChangeXbProcedure.execute(world, entity);
		}
		if (buttonID == 10) {

			PassChange0bProcedure.execute(world, entity, guistate);
		}
		if (buttonID == 11) {

			PassChangeOkBProcedure.execute(world, x, y, z, entity, guistate);
		}
	}

	@SubscribeEvent
	public static void registerMessage(FMLCommonSetupEvent event) {
		ThisnotamodMod.addNetworkMessage(PassChangeGuiNButtonMessage.class, PassChangeGuiNButtonMessage::buffer, PassChangeGuiNButtonMessage::new, PassChangeGuiNButtonMessage::handler);
	}

	public static void writeTextState(HashMap<String, String> map, FriendlyByteBuf buffer) {
		buffer.writeInt(map.size());
		for (Map.Entry<String, String> entry : map.entrySet()) {
			buffer.writeComponent(Component.literal(entry.getKey()));
			buffer.writeComponent(Component.literal(entry.getValue()));
		}
	}

	public static HashMap<String, String> readTextState(FriendlyByteBuf buffer) {
		int size = buffer.readInt();
		HashMap<String, String> map = new HashMap<>();
		for (int i = 0; i < size; i++) {
			String key = buffer.readComponent().getString();
			String value = buffer.readComponent().getString();
			map.put(key, value);
		}
		return map;
	}
}
