
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

import net.code.thisnotamod.world.inventory.CraftingTableKerfuInterfaceMenu;
import net.code.thisnotamod.procedures.KerfInvSlot8ProcProcedure;
import net.code.thisnotamod.procedures.KerfInvSlot7ProcProcedure;
import net.code.thisnotamod.procedures.KerfInvSlot6ProcProcedure;
import net.code.thisnotamod.procedures.KerfInvSlot5ProcProcedure;
import net.code.thisnotamod.procedures.KerfInvSlot4ProcProcedure;
import net.code.thisnotamod.procedures.KerfInvSlot3ProcProcedure;
import net.code.thisnotamod.procedures.KerfInvSlot2ProcProcedure;
import net.code.thisnotamod.procedures.CraftTabSlot0ChangedProcedure;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.function.Supplier;
import java.util.Map;
import java.util.HashMap;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class CraftingTableKerfuInterfaceSlotMessage {
	private final int slotID, x, y, z, changeType, meta;
	private HashMap<String, String> textstate;

	public CraftingTableKerfuInterfaceSlotMessage(int slotID, int x, int y, int z, int changeType, int meta, HashMap<String, String> textstate) {
		this.slotID = slotID;
		this.x = x;
		this.y = y;
		this.z = z;
		this.changeType = changeType;
		this.meta = meta;
		this.textstate = textstate;
	}

	public CraftingTableKerfuInterfaceSlotMessage(FriendlyByteBuf buffer) {
		this.slotID = buffer.readInt();
		this.x = buffer.readInt();
		this.y = buffer.readInt();
		this.z = buffer.readInt();
		this.changeType = buffer.readInt();
		this.meta = buffer.readInt();
		this.textstate = readTextState(buffer);
	}

	public static void buffer(CraftingTableKerfuInterfaceSlotMessage message, FriendlyByteBuf buffer) {
		buffer.writeInt(message.slotID);
		buffer.writeInt(message.x);
		buffer.writeInt(message.y);
		buffer.writeInt(message.z);
		buffer.writeInt(message.changeType);
		buffer.writeInt(message.meta);
		writeTextState(message.textstate, buffer);
	}

	public static void handler(CraftingTableKerfuInterfaceSlotMessage message, Supplier<NetworkEvent.Context> contextSupplier) {
		NetworkEvent.Context context = contextSupplier.get();
		context.enqueueWork(() -> {
			Player entity = context.getSender();
			int slotID = message.slotID;
			int changeType = message.changeType;
			int meta = message.meta;
			int x = message.x;
			int y = message.y;
			int z = message.z;
			HashMap<String, String> textstate = message.textstate;
			handleSlotAction(entity, slotID, changeType, meta, x, y, z, textstate);
		});
		context.setPacketHandled(true);
	}

	public static void handleSlotAction(Player entity, int slot, int changeType, int meta, int x, int y, int z, HashMap<String, String> textstate) {
		Level world = entity.level();
		HashMap guistate = CraftingTableKerfuInterfaceMenu.guistate;
		for (Map.Entry<String, String> entry : textstate.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			guistate.put(key, value);
		}
		// security measure to prevent arbitrary chunk generation
		if (!world.hasChunkAt(new BlockPos(x, y, z)))
			return;
		if (slot == 0 && changeType == 0) {

			CraftTabSlot0ChangedProcedure.execute(world, x, y, z, entity);
		}
		if (slot == 2 && changeType == 0) {

			KerfInvSlot2ProcProcedure.execute(entity);
		}
		if (slot == 3 && changeType == 0) {

			KerfInvSlot3ProcProcedure.execute(entity);
		}
		if (slot == 4 && changeType == 0) {

			KerfInvSlot4ProcProcedure.execute(entity);
		}
		if (slot == 5 && changeType == 0) {

			KerfInvSlot5ProcProcedure.execute(entity);
		}
		if (slot == 6 && changeType == 0) {

			KerfInvSlot6ProcProcedure.execute(entity);
		}
		if (slot == 7 && changeType == 0) {

			KerfInvSlot7ProcProcedure.execute(entity);
		}
		if (slot == 8 && changeType == 0) {

			KerfInvSlot8ProcProcedure.execute(entity);
		}
	}

	@SubscribeEvent
	public static void registerMessage(FMLCommonSetupEvent event) {
		ThisnotamodMod.addNetworkMessage(CraftingTableKerfuInterfaceSlotMessage.class, CraftingTableKerfuInterfaceSlotMessage::buffer, CraftingTableKerfuInterfaceSlotMessage::new, CraftingTableKerfuInterfaceSlotMessage::handler);
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
