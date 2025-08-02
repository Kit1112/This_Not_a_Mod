
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

import net.code.thisnotamod.world.inventory.ServerInterfaceMenu;
import net.code.thisnotamod.procedures.TB9Procedure;
import net.code.thisnotamod.procedures.TB8Procedure;
import net.code.thisnotamod.procedures.TB7Procedure;
import net.code.thisnotamod.procedures.TB6Procedure;
import net.code.thisnotamod.procedures.TB5Procedure;
import net.code.thisnotamod.procedures.TB4Procedure;
import net.code.thisnotamod.procedures.TB3Procedure;
import net.code.thisnotamod.procedures.TB2Procedure;
import net.code.thisnotamod.procedures.TB1Procedure;
import net.code.thisnotamod.procedures.TB0Procedure;
import net.code.thisnotamod.procedures.SiB9Procedure;
import net.code.thisnotamod.procedures.SiB8Procedure;
import net.code.thisnotamod.procedures.SiB7Procedure;
import net.code.thisnotamod.procedures.SiB6Procedure;
import net.code.thisnotamod.procedures.SiB5Procedure;
import net.code.thisnotamod.procedures.SiB4Procedure;
import net.code.thisnotamod.procedures.SiB3Procedure;
import net.code.thisnotamod.procedures.SiB2Procedure;
import net.code.thisnotamod.procedures.SiB1Procedure;
import net.code.thisnotamod.procedures.SiB0Procedure;
import net.code.thisnotamod.procedures.SeB9Procedure;
import net.code.thisnotamod.procedures.SeB8Procedure;
import net.code.thisnotamod.procedures.SeB7Procedure;
import net.code.thisnotamod.procedures.SeB6Procedure;
import net.code.thisnotamod.procedures.SeB5Procedure;
import net.code.thisnotamod.procedures.SeB4Procedure;
import net.code.thisnotamod.procedures.SeB3Procedure;
import net.code.thisnotamod.procedures.SeB2Procedure;
import net.code.thisnotamod.procedures.SeB1Procedure;
import net.code.thisnotamod.procedures.SeB0Procedure;
import net.code.thisnotamod.procedures.SB9Procedure;
import net.code.thisnotamod.procedures.SB7Procedure;
import net.code.thisnotamod.procedures.SB6Procedure;
import net.code.thisnotamod.procedures.SB5Procedure;
import net.code.thisnotamod.procedures.SB4Procedure;
import net.code.thisnotamod.procedures.SB3Procedure;
import net.code.thisnotamod.procedures.SB2Procedure;
import net.code.thisnotamod.procedures.SB1Procedure;
import net.code.thisnotamod.procedures.SB0Procedure;
import net.code.thisnotamod.procedures.FoB9Procedure;
import net.code.thisnotamod.procedures.FoB8Procedure;
import net.code.thisnotamod.procedures.FoB7Procedure;
import net.code.thisnotamod.procedures.FoB6Procedure;
import net.code.thisnotamod.procedures.FoB5Procedure;
import net.code.thisnotamod.procedures.FoB4Procedure;
import net.code.thisnotamod.procedures.FoB3Procedure;
import net.code.thisnotamod.procedures.FoB2Procedure;
import net.code.thisnotamod.procedures.FoB1Procedure;
import net.code.thisnotamod.procedures.FoB0Procedure;
import net.code.thisnotamod.procedures.FiB9Procedure;
import net.code.thisnotamod.procedures.FiB8Procedure;
import net.code.thisnotamod.procedures.FiB7Procedure;
import net.code.thisnotamod.procedures.FiB6Procedure;
import net.code.thisnotamod.procedures.FiB5Procedure;
import net.code.thisnotamod.procedures.FiB4Procedure;
import net.code.thisnotamod.procedures.FiB3Procedure;
import net.code.thisnotamod.procedures.FiB2Procedure;
import net.code.thisnotamod.procedures.FiB1Procedure;
import net.code.thisnotamod.procedures.FiB0Procedure;
import net.code.thisnotamod.procedures.FB9Procedure;
import net.code.thisnotamod.procedures.FB8Procedure;
import net.code.thisnotamod.procedures.FB7Procedure;
import net.code.thisnotamod.procedures.FB6Procedure;
import net.code.thisnotamod.procedures.FB5Procedure;
import net.code.thisnotamod.procedures.FB4Procedure;
import net.code.thisnotamod.procedures.FB3Procedure;
import net.code.thisnotamod.procedures.FB2Procedure;
import net.code.thisnotamod.procedures.FB1Procedure;
import net.code.thisnotamod.procedures.FB0Procedure;
import net.code.thisnotamod.procedures.ExitButtonProcedure;
import net.code.thisnotamod.procedures.EB9Procedure;
import net.code.thisnotamod.procedures.EB8Procedure;
import net.code.thisnotamod.procedures.EB7Procedure;
import net.code.thisnotamod.procedures.EB6Procedure;
import net.code.thisnotamod.procedures.EB5Procedure;
import net.code.thisnotamod.procedures.EB4Procedure;
import net.code.thisnotamod.procedures.EB3Procedure;
import net.code.thisnotamod.procedures.EB2Procedure;
import net.code.thisnotamod.procedures.EB1Procedure;
import net.code.thisnotamod.procedures.EB0Procedure;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.function.Supplier;
import java.util.Map;
import java.util.HashMap;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class ServerInterfaceButtonMessage {
	private final int buttonID, x, y, z;
	private HashMap<String, String> textstate;

	public ServerInterfaceButtonMessage(FriendlyByteBuf buffer) {
		this.buttonID = buffer.readInt();
		this.x = buffer.readInt();
		this.y = buffer.readInt();
		this.z = buffer.readInt();
		this.textstate = readTextState(buffer);
	}

	public ServerInterfaceButtonMessage(int buttonID, int x, int y, int z, HashMap<String, String> textstate) {
		this.buttonID = buttonID;
		this.x = x;
		this.y = y;
		this.z = z;
		this.textstate = textstate;

	}

	public static void buffer(ServerInterfaceButtonMessage message, FriendlyByteBuf buffer) {
		buffer.writeInt(message.buttonID);
		buffer.writeInt(message.x);
		buffer.writeInt(message.y);
		buffer.writeInt(message.z);
		writeTextState(message.textstate, buffer);
	}

	public static void handler(ServerInterfaceButtonMessage message, Supplier<NetworkEvent.Context> contextSupplier) {
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
		HashMap guistate = ServerInterfaceMenu.guistate;
		for (Map.Entry<String, String> entry : textstate.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			guistate.put(key, value);
		}
		// security measure to prevent arbitrary chunk generation
		if (!world.hasChunkAt(new BlockPos(x, y, z)))
			return;
		if (buttonID == 0) {

			FB0Procedure.execute(entity);
		}
		if (buttonID == 1) {

			SB0Procedure.execute(entity);
		}
		if (buttonID == 2) {

			TB0Procedure.execute(entity);
		}
		if (buttonID == 3) {

			FoB0Procedure.execute(entity);
		}
		if (buttonID == 4) {

			FiB0Procedure.execute(entity);
		}
		if (buttonID == 5) {

			SiB0Procedure.execute(entity);
		}
		if (buttonID == 6) {

			SeB0Procedure.execute(entity);
		}
		if (buttonID == 7) {

			EB0Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 8) {

			FB1Procedure.execute(entity);
		}
		if (buttonID == 9) {

			SB1Procedure.execute(entity);
		}
		if (buttonID == 10) {

			TB1Procedure.execute(entity);
		}
		if (buttonID == 11) {

			FoB1Procedure.execute(entity);
		}
		if (buttonID == 12) {

			FiB1Procedure.execute(entity);
		}
		if (buttonID == 13) {

			SiB1Procedure.execute(entity);
		}
		if (buttonID == 14) {

			SeB1Procedure.execute(entity);
		}
		if (buttonID == 15) {

			EB1Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 16) {

			FB2Procedure.execute(entity);
		}
		if (buttonID == 17) {

			SB2Procedure.execute(entity);
		}
		if (buttonID == 18) {

			TB2Procedure.execute(entity);
		}
		if (buttonID == 19) {

			FoB2Procedure.execute(entity);
		}
		if (buttonID == 20) {

			FiB2Procedure.execute(entity);
		}
		if (buttonID == 21) {

			SiB2Procedure.execute(entity);
		}
		if (buttonID == 22) {

			SeB2Procedure.execute(entity);
		}
		if (buttonID == 23) {

			EB2Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 24) {

			FB3Procedure.execute(entity);
		}
		if (buttonID == 25) {

			SB3Procedure.execute(entity);
		}
		if (buttonID == 26) {

			TB3Procedure.execute(entity);
		}
		if (buttonID == 27) {

			FoB3Procedure.execute(entity);
		}
		if (buttonID == 28) {

			FiB3Procedure.execute(entity);
		}
		if (buttonID == 29) {

			SiB3Procedure.execute(entity);
		}
		if (buttonID == 30) {

			SeB3Procedure.execute(entity);
		}
		if (buttonID == 31) {

			EB3Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 32) {

			FB4Procedure.execute(entity);
		}
		if (buttonID == 33) {

			SB4Procedure.execute(entity);
		}
		if (buttonID == 34) {

			TB4Procedure.execute(entity);
		}
		if (buttonID == 35) {

			FoB4Procedure.execute(entity);
		}
		if (buttonID == 36) {

			FiB4Procedure.execute(entity);
		}
		if (buttonID == 37) {

			SiB4Procedure.execute(entity);
		}
		if (buttonID == 38) {

			SeB4Procedure.execute(entity);
		}
		if (buttonID == 39) {

			EB4Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 40) {

			FB5Procedure.execute(entity);
		}
		if (buttonID == 41) {

			SB5Procedure.execute(entity);
		}
		if (buttonID == 42) {

			TB5Procedure.execute(entity);
		}
		if (buttonID == 43) {

			FoB5Procedure.execute(entity);
		}
		if (buttonID == 44) {

			FiB5Procedure.execute(entity);
		}
		if (buttonID == 45) {

			SiB5Procedure.execute(entity);
		}
		if (buttonID == 46) {

			SeB5Procedure.execute(entity);
		}
		if (buttonID == 47) {

			EB5Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 48) {

			FB6Procedure.execute(entity);
		}
		if (buttonID == 49) {

			SB6Procedure.execute(entity);
		}
		if (buttonID == 50) {

			TB6Procedure.execute(entity);
		}
		if (buttonID == 51) {

			FoB6Procedure.execute(entity);
		}
		if (buttonID == 52) {

			FiB6Procedure.execute(entity);
		}
		if (buttonID == 53) {

			SiB6Procedure.execute(entity);
		}
		if (buttonID == 54) {

			SeB6Procedure.execute(entity);
		}
		if (buttonID == 55) {

			EB6Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 56) {

			FB7Procedure.execute(entity);
		}
		if (buttonID == 57) {

			SB7Procedure.execute(entity);
		}
		if (buttonID == 58) {

			TB7Procedure.execute(entity);
		}
		if (buttonID == 59) {

			FoB7Procedure.execute(entity);
		}
		if (buttonID == 60) {

			FiB7Procedure.execute(entity);
		}
		if (buttonID == 61) {

			SiB7Procedure.execute(entity);
		}
		if (buttonID == 62) {

			SeB7Procedure.execute(entity);
		}
		if (buttonID == 63) {

			EB7Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 64) {

			FB8Procedure.execute(entity);
		}
		if (buttonID == 65) {

			SB7Procedure.execute(entity);
		}
		if (buttonID == 66) {

			TB8Procedure.execute(entity);
		}
		if (buttonID == 67) {

			FoB8Procedure.execute(entity);
		}
		if (buttonID == 68) {

			FiB8Procedure.execute(entity);
		}
		if (buttonID == 69) {

			SiB8Procedure.execute(entity);
		}
		if (buttonID == 70) {

			SeB8Procedure.execute(entity);
		}
		if (buttonID == 71) {

			EB8Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 72) {

			FB9Procedure.execute(entity);
		}
		if (buttonID == 73) {

			SB9Procedure.execute(entity);
		}
		if (buttonID == 74) {

			TB9Procedure.execute(entity);
		}
		if (buttonID == 75) {

			FoB9Procedure.execute(entity);
		}
		if (buttonID == 76) {

			FiB9Procedure.execute(entity);
		}
		if (buttonID == 77) {

			SiB9Procedure.execute(entity);
		}
		if (buttonID == 78) {

			SeB9Procedure.execute(entity);
		}
		if (buttonID == 79) {

			EB9Procedure.execute(world, x, y, z, entity);
		}
		if (buttonID == 80) {

			ExitButtonProcedure.execute(entity);
		}
	}

	@SubscribeEvent
	public static void registerMessage(FMLCommonSetupEvent event) {
		ThisnotamodMod.addNetworkMessage(ServerInterfaceButtonMessage.class, ServerInterfaceButtonMessage::buffer, ServerInterfaceButtonMessage::new, ServerInterfaceButtonMessage::handler);
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
