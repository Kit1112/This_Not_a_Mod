
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

import net.code.thisnotamod.world.inventory.PasslockGUIMenu;
import net.code.thisnotamod.procedures.OnClickXProcedure;
import net.code.thisnotamod.procedures.OnClickOkProcedure;
import net.code.thisnotamod.procedures.OnClickBOnClickB0Procedure;
import net.code.thisnotamod.procedures.OnClickB9Procedure;
import net.code.thisnotamod.procedures.OnClickB8Procedure;
import net.code.thisnotamod.procedures.OnClickB7Procedure;
import net.code.thisnotamod.procedures.OnClickB6Procedure;
import net.code.thisnotamod.procedures.OnClickB5Procedure;
import net.code.thisnotamod.procedures.OnClickB4Procedure;
import net.code.thisnotamod.procedures.OnClickB3Procedure;
import net.code.thisnotamod.procedures.OnClickB2Procedure;
import net.code.thisnotamod.procedures.OnClickB1Procedure;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.function.Supplier;
import java.util.Map;
import java.util.HashMap;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class PasslockGUIButtonMessage {
	private final int buttonID, x, y, z;
	private HashMap<String, String> textstate;

	public PasslockGUIButtonMessage(FriendlyByteBuf buffer) {
		this.buttonID = buffer.readInt();
		this.x = buffer.readInt();
		this.y = buffer.readInt();
		this.z = buffer.readInt();
		this.textstate = readTextState(buffer);
	}

	public PasslockGUIButtonMessage(int buttonID, int x, int y, int z, HashMap<String, String> textstate) {
		this.buttonID = buttonID;
		this.x = x;
		this.y = y;
		this.z = z;
		this.textstate = textstate;

	}

	public static void buffer(PasslockGUIButtonMessage message, FriendlyByteBuf buffer) {
		buffer.writeInt(message.buttonID);
		buffer.writeInt(message.x);
		buffer.writeInt(message.y);
		buffer.writeInt(message.z);
		writeTextState(message.textstate, buffer);
	}

	public static void handler(PasslockGUIButtonMessage message, Supplier<NetworkEvent.Context> contextSupplier) {
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
		HashMap guistate = PasslockGUIMenu.guistate;
		for (Map.Entry<String, String> entry : textstate.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			guistate.put(key, value);
		}
		// security measure to prevent arbitrary chunk generation
		if (!world.hasChunkAt(new BlockPos(x, y, z)))
			return;
		if (buttonID == 0) {

			OnClickB1Procedure.execute(world, x, y, z, entity, guistate);
		}
		if (buttonID == 1) {

			OnClickB2Procedure.execute(world, x, y, z, entity, guistate);
		}
		if (buttonID == 2) {

			OnClickB3Procedure.execute(world, x, y, z, entity, guistate);
		}
		if (buttonID == 3) {

			OnClickB4Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 4) {

			OnClickB5Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 5) {

			OnClickB6Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 6) {

			OnClickB7Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 7) {

			OnClickB8Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 8) {

			OnClickB9Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 9) {

			OnClickXProcedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 10) {

			OnClickBOnClickB0Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 11) {

			OnClickOkProcedure.execute(world, x, y, z, entity);
		}
	}

	@SubscribeEvent
	public static void registerMessage(FMLCommonSetupEvent event) {
		ThisnotamodMod.addNetworkMessage(PasslockGUIButtonMessage.class, PasslockGUIButtonMessage::buffer, PasslockGUIButtonMessage::new, PasslockGUIButtonMessage::handler);
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
