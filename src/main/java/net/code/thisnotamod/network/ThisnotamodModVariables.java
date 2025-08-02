package net.code.thisnotamod.network;

import net.minecraftforge.network.PacketDistributor;
import net.minecraftforge.network.NetworkEvent;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.entity.player.PlayerEvent;
import net.minecraftforge.event.AttachCapabilitiesEvent;
import net.minecraftforge.common.util.LazyOptional;
import net.minecraftforge.common.util.FakePlayer;
import net.minecraftforge.common.capabilities.RegisterCapabilitiesEvent;
import net.minecraftforge.common.capabilities.ICapabilitySerializable;
import net.minecraftforge.common.capabilities.CapabilityToken;
import net.minecraftforge.common.capabilities.CapabilityManager;
import net.minecraftforge.common.capabilities.Capability;

import net.minecraft.world.level.saveddata.SavedData;
import net.minecraft.world.level.ServerLevelAccessor;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.nbt.Tag;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.core.Direction;
import net.minecraft.client.multiplayer.ServerList;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.ThisnotamodMod;

import java.util.function.Supplier;
import java.util.List;
import java.util.ArrayList;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class ThisnotamodModVariables {
	public static List<Object> DoorsCoords = new ArrayList<>();
	public static List<Object> exampleArray = new ArrayList<>();
	public static List<Object> LampCoords = new ArrayList<>();
	public static List<Object> PassCoords = new ArrayList<>();
	public static List<Object> resultArray = new ArrayList<>();
	public static List<Object> Servers = new ArrayList<>();
	public static java.util.Map<Object, Object[]> ServerList = new java.util.HashMap<>();
	public static List<Object> daramapIterator = new ArrayList<>();
	public static List<Object> autoBreakServList = new ArrayList<>();
	public static List<Object> servCoordsForAutobreak = new ArrayList<>();

	@SubscribeEvent
	public static void init(FMLCommonSetupEvent event) {
		ThisnotamodMod.addNetworkMessage(SavedDataSyncMessage.class, SavedDataSyncMessage::buffer, SavedDataSyncMessage::new, SavedDataSyncMessage::handler);
		ThisnotamodMod.addNetworkMessage(PlayerVariablesSyncMessage.class, PlayerVariablesSyncMessage::buffer, PlayerVariablesSyncMessage::new, PlayerVariablesSyncMessage::handler);
	}

	@SubscribeEvent
	public static void init(RegisterCapabilitiesEvent event) {
		event.register(PlayerVariables.class);
	}

	@Mod.EventBusSubscriber
	public static class EventBusVariableHandlers {
		@SubscribeEvent
		public static void onPlayerLoggedInSyncPlayerVariables(PlayerEvent.PlayerLoggedInEvent event) {
			if (!event.getEntity().level().isClientSide())
				((PlayerVariables) event.getEntity().getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables())).syncPlayerVariables(event.getEntity());
		}

		@SubscribeEvent
		public static void onPlayerRespawnedSyncPlayerVariables(PlayerEvent.PlayerRespawnEvent event) {
			if (!event.getEntity().level().isClientSide())
				((PlayerVariables) event.getEntity().getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables())).syncPlayerVariables(event.getEntity());
		}

		@SubscribeEvent
		public static void onPlayerChangedDimensionSyncPlayerVariables(PlayerEvent.PlayerChangedDimensionEvent event) {
			if (!event.getEntity().level().isClientSide())
				((PlayerVariables) event.getEntity().getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables())).syncPlayerVariables(event.getEntity());
		}

		@SubscribeEvent
		public static void clonePlayer(PlayerEvent.Clone event) {
			event.getOriginal().revive();
			PlayerVariables original = ((PlayerVariables) event.getOriginal().getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables()));
			PlayerVariables clone = ((PlayerVariables) event.getEntity().getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables()));
			clone.CheckBox1 = original.CheckBox1;
			clone.CheckBox2 = original.CheckBox2;
			clone.CheckBox3 = original.CheckBox3;
			clone.CheckBox4 = original.CheckBox4;
			clone.CheckBox5 = original.CheckBox5;
			clone.CheckBox6 = original.CheckBox6;
			clone.CheckBox7 = original.CheckBox7;
			clone.CheckBox8 = original.CheckBox8;
			clone.debug = original.debug;
			clone.doorArrIndex = original.doorArrIndex;
			clone.DoorXcoord = original.DoorXcoord;
			clone.DoorYcoord = original.DoorYcoord;
			clone.DoorZcoord = original.DoorZcoord;
			clone.LampArrIndex = original.LampArrIndex;
			clone.LampXcoord = original.LampXcoord;
			clone.LampYcoord = original.LampYcoord;
			clone.LampZcoord = original.LampZcoord;
			clone.linkedDoors = original.linkedDoors;
			clone.LinkedLamps = original.LinkedLamps;
			clone.linkedPasslocks = original.linkedPasslocks;
			clone.passArrIndex = original.passArrIndex;
			clone.passText = original.passText;
			clone.PassXCoord = original.PassXCoord;
			clone.PassYCoord = original.PassYCoord;
			clone.PassZCoord = original.PassZCoord;
			clone.servCoordX = original.servCoordX;
			clone.servCoordY = original.servCoordY;
			clone.servCoordZ = original.servCoordZ;
			clone.ServersOwnString = original.ServersOwnString;
			clone.result = original.result;
			clone.rand = original.rand;
			clone.firstNumber = original.firstNumber;
			clone.secondNumber = original.secondNumber;
			clone.Example1 = original.Example1;
			clone.Example2 = original.Example2;
			clone.Example3 = original.Example3;
			clone.Example4 = original.Example4;
			clone.Example5 = original.Example5;
			clone.Example6 = original.Example6;
			clone.Example7 = original.Example7;
			clone.Example8 = original.Example8;
			clone.TimeDisplay = original.TimeDisplay;
			if (!event.isWasDeath()) {
			}
		}

		@SubscribeEvent
		public static void onPlayerLoggedIn(PlayerEvent.PlayerLoggedInEvent event) {
			if (!event.getEntity().level().isClientSide()) {
				SavedData mapdata = MapVariables.get(event.getEntity().level());
				SavedData worlddata = WorldVariables.get(event.getEntity().level());
				if (mapdata != null)
					ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> (ServerPlayer) event.getEntity()), new SavedDataSyncMessage(0, mapdata));
				if (worlddata != null)
					ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> (ServerPlayer) event.getEntity()), new SavedDataSyncMessage(1, worlddata));
			}
		}

		@SubscribeEvent
		public static void onPlayerChangedDimension(PlayerEvent.PlayerChangedDimensionEvent event) {
			if (!event.getEntity().level().isClientSide()) {
				SavedData worlddata = WorldVariables.get(event.getEntity().level());
				if (worlddata != null)
					ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> (ServerPlayer) event.getEntity()), new SavedDataSyncMessage(1, worlddata));
			}
		}
	}

	public static class WorldVariables extends SavedData {
		public static final String DATA_NAME = "thisnotamod_worldvars";
		public boolean dayAmb = false;
		public boolean eveningAmb = false;
		public boolean morningAmb = false;
		public boolean NightAmb = false;
		public double playerCounterDimVotv1 = 0;

		public static WorldVariables load(CompoundTag tag) {
			WorldVariables data = new WorldVariables();
			data.read(tag);
			return data;
		}

		public void read(CompoundTag nbt) {
			dayAmb = nbt.getBoolean("dayAmb");
			eveningAmb = nbt.getBoolean("eveningAmb");
			morningAmb = nbt.getBoolean("morningAmb");
			NightAmb = nbt.getBoolean("NightAmb");
			playerCounterDimVotv1 = nbt.getDouble("playerCounterDimVotv1");
		}

		@Override
		public CompoundTag save(CompoundTag nbt) {
			nbt.putBoolean("dayAmb", dayAmb);
			nbt.putBoolean("eveningAmb", eveningAmb);
			nbt.putBoolean("morningAmb", morningAmb);
			nbt.putBoolean("NightAmb", NightAmb);
			nbt.putDouble("playerCounterDimVotv1", playerCounterDimVotv1);
			return nbt;
		}

		public void syncData(LevelAccessor world) {
			this.setDirty();
			if (world instanceof Level level && !level.isClientSide())
				ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.DIMENSION.with(level::dimension), new SavedDataSyncMessage(1, this));
		}

		static WorldVariables clientSide = new WorldVariables();

		public static WorldVariables get(LevelAccessor world) {
			if (world instanceof ServerLevel level) {
				return level.getDataStorage().computeIfAbsent(e -> WorldVariables.load(e), WorldVariables::new, DATA_NAME);
			} else {
				return clientSide;
			}
		}
	}

	public static class MapVariables extends SavedData {
		public static final String DATA_NAME = "thisnotamod_mapvars";
		public String passchange = "";
		public String ServersString = "\"\"";
		public CompoundTag datamap1 = new CompoundTag();
		public double random = 0;
		public String breakX = "\"\"";
		public String breakY = "\"\"";
		public String breakZ = "\"\"";
		public double breakCounter = 0;
		public boolean autobreakExecutedToday = false;
		public boolean worldDebug = false;
		public boolean Alarm = false;
		public CompoundTag WarnLamps = new CompoundTag();
		public double warnLampX = 0;
		public double warnLampY = 0;
		public double warnLampZ = 0;
		public boolean AlarmSoundIsPlayed = false;
		public boolean warnLampIsActive = false;

		public static MapVariables load(CompoundTag tag) {
			MapVariables data = new MapVariables();
			data.read(tag);
			return data;
		}

		public void read(CompoundTag nbt) {
			passchange = nbt.getString("passchange");
			ServersString = nbt.getString("ServersString");
			this.datamap1 = nbt.get("datamap1") instanceof CompoundTag datamap1 ? datamap1 : new CompoundTag();
			random = nbt.getDouble("random");
			breakX = nbt.getString("breakX");
			breakY = nbt.getString("breakY");
			breakZ = nbt.getString("breakZ");
			breakCounter = nbt.getDouble("breakCounter");
			autobreakExecutedToday = nbt.getBoolean("autobreakExecutedToday");
			worldDebug = nbt.getBoolean("worldDebug");
			Alarm = nbt.getBoolean("Alarm");
			this.WarnLamps = nbt.get("WarnLamps") instanceof CompoundTag WarnLamps ? WarnLamps : new CompoundTag();
			warnLampX = nbt.getDouble("warnLampX");
			warnLampY = nbt.getDouble("warnLampY");
			warnLampZ = nbt.getDouble("warnLampZ");
			AlarmSoundIsPlayed = nbt.getBoolean("AlarmSoundIsPlayed");
			warnLampIsActive = nbt.getBoolean("warnLampIsActive");
		}

		@Override
		public CompoundTag save(CompoundTag nbt) {
			nbt.putString("passchange", passchange);
			nbt.putString("ServersString", ServersString);
			nbt.put("datamap1", this.datamap1);
			nbt.putDouble("random", random);
			nbt.putString("breakX", breakX);
			nbt.putString("breakY", breakY);
			nbt.putString("breakZ", breakZ);
			nbt.putDouble("breakCounter", breakCounter);
			nbt.putBoolean("autobreakExecutedToday", autobreakExecutedToday);
			nbt.putBoolean("worldDebug", worldDebug);
			nbt.putBoolean("Alarm", Alarm);
			nbt.put("WarnLamps", this.WarnLamps);
			nbt.putDouble("warnLampX", warnLampX);
			nbt.putDouble("warnLampY", warnLampY);
			nbt.putDouble("warnLampZ", warnLampZ);
			nbt.putBoolean("AlarmSoundIsPlayed", AlarmSoundIsPlayed);
			nbt.putBoolean("warnLampIsActive", warnLampIsActive);
			return nbt;
		}

		public void syncData(LevelAccessor world) {
			this.setDirty();
			if (world instanceof Level && !world.isClientSide())
				ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.ALL.noArg(), new SavedDataSyncMessage(0, this));
		}

		static MapVariables clientSide = new MapVariables();

		public static MapVariables get(LevelAccessor world) {
			if (world instanceof ServerLevelAccessor serverLevelAcc) {
				return serverLevelAcc.getLevel().getServer().getLevel(Level.OVERWORLD).getDataStorage().computeIfAbsent(e -> MapVariables.load(e), MapVariables::new, DATA_NAME);
			} else {
				return clientSide;
			}
		}
	}

	public static class SavedDataSyncMessage {
		private final int type;
		private SavedData data;

		public SavedDataSyncMessage(FriendlyByteBuf buffer) {
			this.type = buffer.readInt();
			CompoundTag nbt = buffer.readNbt();
			if (nbt != null) {
				this.data = this.type == 0 ? new MapVariables() : new WorldVariables();
				if (this.data instanceof MapVariables mapVariables)
					mapVariables.read(nbt);
				else if (this.data instanceof WorldVariables worldVariables)
					worldVariables.read(nbt);
			}
		}

		public SavedDataSyncMessage(int type, SavedData data) {
			this.type = type;
			this.data = data;
		}

		public static void buffer(SavedDataSyncMessage message, FriendlyByteBuf buffer) {
			buffer.writeInt(message.type);
			if (message.data != null)
				buffer.writeNbt(message.data.save(new CompoundTag()));
		}

		public static void handler(SavedDataSyncMessage message, Supplier<NetworkEvent.Context> contextSupplier) {
			NetworkEvent.Context context = contextSupplier.get();
			context.enqueueWork(() -> {
				if (!context.getDirection().getReceptionSide().isServer() && message.data != null) {
					if (message.type == 0)
						MapVariables.clientSide = (MapVariables) message.data;
					else
						WorldVariables.clientSide = (WorldVariables) message.data;
				}
			});
			context.setPacketHandled(true);
		}
	}

	public static final Capability<PlayerVariables> PLAYER_VARIABLES_CAPABILITY = CapabilityManager.get(new CapabilityToken<PlayerVariables>() {
	});

	@Mod.EventBusSubscriber
	private static class PlayerVariablesProvider implements ICapabilitySerializable<Tag> {
		@SubscribeEvent
		public static void onAttachCapabilities(AttachCapabilitiesEvent<Entity> event) {
			if (event.getObject() instanceof Player && !(event.getObject() instanceof FakePlayer))
				event.addCapability(new ResourceLocation("thisnotamod", "player_variables"), new PlayerVariablesProvider());
		}

		private final PlayerVariables playerVariables = new PlayerVariables();
		private final LazyOptional<PlayerVariables> instance = LazyOptional.of(() -> playerVariables);

		@Override
		public <T> LazyOptional<T> getCapability(Capability<T> cap, Direction side) {
			return cap == PLAYER_VARIABLES_CAPABILITY ? instance.cast() : LazyOptional.empty();
		}

		@Override
		public Tag serializeNBT() {
			return playerVariables.writeNBT();
		}

		@Override
		public void deserializeNBT(Tag nbt) {
			playerVariables.readNBT(nbt);
		}
	}

	public static class PlayerVariables {
		public double CheckBox1 = 3.0;
		public double CheckBox2 = 3.0;
		public double CheckBox3 = 3.0;
		public double CheckBox4 = 3.0;
		public double CheckBox5 = 3.0;
		public double CheckBox6 = 3.0;
		public double CheckBox7 = 3.0;
		public double CheckBox8 = 3.0;
		public boolean debug = false;
		public double doorArrIndex = 0.0;
		public double DoorXcoord = 0;
		public double DoorYcoord = 0;
		public double DoorZcoord = 0;
		public double LampArrIndex = 0.0;
		public double LampXcoord = 0;
		public double LampYcoord = 0;
		public double LampZcoord = 0.0;
		public String linkedDoors = "";
		public String LinkedLamps = "";
		public String linkedPasslocks = "";
		public double passArrIndex = 0;
		public String passText = "";
		public double PassXCoord = 0;
		public double PassYCoord = 0;
		public double PassZCoord = 0;
		public double servCoordX = 0;
		public double servCoordY = 0;
		public double servCoordZ = 0;
		public String ServersOwnString = "\"\"";
		public double result = 0;
		public double rand = 0;
		public double firstNumber = 0;
		public double secondNumber = 0;
		public String Example1 = "\"\"";
		public String Example2 = "\"\"";
		public String Example3 = "\"\"";
		public String Example4 = "\"\"";
		public String Example5 = "\"\"";
		public String Example6 = "\"\"";
		public String Example7 = "\"\"";
		public String Example8 = "\"\"";
		public boolean TimeDisplay = false;

		public void syncPlayerVariables(Entity entity) {
			if (entity instanceof ServerPlayer serverPlayer)
				ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> serverPlayer), new PlayerVariablesSyncMessage(this));
		}

		public Tag writeNBT() {
			CompoundTag nbt = new CompoundTag();
			nbt.putDouble("CheckBox1", CheckBox1);
			nbt.putDouble("CheckBox2", CheckBox2);
			nbt.putDouble("CheckBox3", CheckBox3);
			nbt.putDouble("CheckBox4", CheckBox4);
			nbt.putDouble("CheckBox5", CheckBox5);
			nbt.putDouble("CheckBox6", CheckBox6);
			nbt.putDouble("CheckBox7", CheckBox7);
			nbt.putDouble("CheckBox8", CheckBox8);
			nbt.putBoolean("debug", debug);
			nbt.putDouble("doorArrIndex", doorArrIndex);
			nbt.putDouble("DoorXcoord", DoorXcoord);
			nbt.putDouble("DoorYcoord", DoorYcoord);
			nbt.putDouble("DoorZcoord", DoorZcoord);
			nbt.putDouble("LampArrIndex", LampArrIndex);
			nbt.putDouble("LampXcoord", LampXcoord);
			nbt.putDouble("LampYcoord", LampYcoord);
			nbt.putDouble("LampZcoord", LampZcoord);
			nbt.putString("linkedDoors", linkedDoors);
			nbt.putString("LinkedLamps", LinkedLamps);
			nbt.putString("linkedPasslocks", linkedPasslocks);
			nbt.putDouble("passArrIndex", passArrIndex);
			nbt.putString("passText", passText);
			nbt.putDouble("PassXCoord", PassXCoord);
			nbt.putDouble("PassYCoord", PassYCoord);
			nbt.putDouble("PassZCoord", PassZCoord);
			nbt.putDouble("servCoordX", servCoordX);
			nbt.putDouble("servCoordY", servCoordY);
			nbt.putDouble("servCoordZ", servCoordZ);
			nbt.putString("ServersOwnString", ServersOwnString);
			nbt.putDouble("result", result);
			nbt.putDouble("rand", rand);
			nbt.putDouble("firstNumber", firstNumber);
			nbt.putDouble("secondNumber", secondNumber);
			nbt.putString("Example1", Example1);
			nbt.putString("Example2", Example2);
			nbt.putString("Example3", Example3);
			nbt.putString("Example4", Example4);
			nbt.putString("Example5", Example5);
			nbt.putString("Example6", Example6);
			nbt.putString("Example7", Example7);
			nbt.putString("Example8", Example8);
			nbt.putBoolean("TimeDisplay", TimeDisplay);
			return nbt;
		}

		public void readNBT(Tag tag) {
			CompoundTag nbt = (CompoundTag) tag;
			CheckBox1 = nbt.getDouble("CheckBox1");
			CheckBox2 = nbt.getDouble("CheckBox2");
			CheckBox3 = nbt.getDouble("CheckBox3");
			CheckBox4 = nbt.getDouble("CheckBox4");
			CheckBox5 = nbt.getDouble("CheckBox5");
			CheckBox6 = nbt.getDouble("CheckBox6");
			CheckBox7 = nbt.getDouble("CheckBox7");
			CheckBox8 = nbt.getDouble("CheckBox8");
			debug = nbt.getBoolean("debug");
			doorArrIndex = nbt.getDouble("doorArrIndex");
			DoorXcoord = nbt.getDouble("DoorXcoord");
			DoorYcoord = nbt.getDouble("DoorYcoord");
			DoorZcoord = nbt.getDouble("DoorZcoord");
			LampArrIndex = nbt.getDouble("LampArrIndex");
			LampXcoord = nbt.getDouble("LampXcoord");
			LampYcoord = nbt.getDouble("LampYcoord");
			LampZcoord = nbt.getDouble("LampZcoord");
			linkedDoors = nbt.getString("linkedDoors");
			LinkedLamps = nbt.getString("LinkedLamps");
			linkedPasslocks = nbt.getString("linkedPasslocks");
			passArrIndex = nbt.getDouble("passArrIndex");
			passText = nbt.getString("passText");
			PassXCoord = nbt.getDouble("PassXCoord");
			PassYCoord = nbt.getDouble("PassYCoord");
			PassZCoord = nbt.getDouble("PassZCoord");
			servCoordX = nbt.getDouble("servCoordX");
			servCoordY = nbt.getDouble("servCoordY");
			servCoordZ = nbt.getDouble("servCoordZ");
			ServersOwnString = nbt.getString("ServersOwnString");
			result = nbt.getDouble("result");
			rand = nbt.getDouble("rand");
			firstNumber = nbt.getDouble("firstNumber");
			secondNumber = nbt.getDouble("secondNumber");
			Example1 = nbt.getString("Example1");
			Example2 = nbt.getString("Example2");
			Example3 = nbt.getString("Example3");
			Example4 = nbt.getString("Example4");
			Example5 = nbt.getString("Example5");
			Example6 = nbt.getString("Example6");
			Example7 = nbt.getString("Example7");
			Example8 = nbt.getString("Example8");
			TimeDisplay = nbt.getBoolean("TimeDisplay");
		}
	}

	public static class PlayerVariablesSyncMessage {
		private final PlayerVariables data;

		public PlayerVariablesSyncMessage(FriendlyByteBuf buffer) {
			this.data = new PlayerVariables();
			this.data.readNBT(buffer.readNbt());
		}

		public PlayerVariablesSyncMessage(PlayerVariables data) {
			this.data = data;
		}

		public static void buffer(PlayerVariablesSyncMessage message, FriendlyByteBuf buffer) {
			buffer.writeNbt((CompoundTag) message.data.writeNBT());
		}

		public static void handler(PlayerVariablesSyncMessage message, Supplier<NetworkEvent.Context> contextSupplier) {
			NetworkEvent.Context context = contextSupplier.get();
			context.enqueueWork(() -> {
				if (!context.getDirection().getReceptionSide().isServer()) {
					PlayerVariables variables = ((PlayerVariables) Minecraft.getInstance().player.getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables()));
					variables.CheckBox1 = message.data.CheckBox1;
					variables.CheckBox2 = message.data.CheckBox2;
					variables.CheckBox3 = message.data.CheckBox3;
					variables.CheckBox4 = message.data.CheckBox4;
					variables.CheckBox5 = message.data.CheckBox5;
					variables.CheckBox6 = message.data.CheckBox6;
					variables.CheckBox7 = message.data.CheckBox7;
					variables.CheckBox8 = message.data.CheckBox8;
					variables.debug = message.data.debug;
					variables.doorArrIndex = message.data.doorArrIndex;
					variables.DoorXcoord = message.data.DoorXcoord;
					variables.DoorYcoord = message.data.DoorYcoord;
					variables.DoorZcoord = message.data.DoorZcoord;
					variables.LampArrIndex = message.data.LampArrIndex;
					variables.LampXcoord = message.data.LampXcoord;
					variables.LampYcoord = message.data.LampYcoord;
					variables.LampZcoord = message.data.LampZcoord;
					variables.linkedDoors = message.data.linkedDoors;
					variables.LinkedLamps = message.data.LinkedLamps;
					variables.linkedPasslocks = message.data.linkedPasslocks;
					variables.passArrIndex = message.data.passArrIndex;
					variables.passText = message.data.passText;
					variables.PassXCoord = message.data.PassXCoord;
					variables.PassYCoord = message.data.PassYCoord;
					variables.PassZCoord = message.data.PassZCoord;
					variables.servCoordX = message.data.servCoordX;
					variables.servCoordY = message.data.servCoordY;
					variables.servCoordZ = message.data.servCoordZ;
					variables.ServersOwnString = message.data.ServersOwnString;
					variables.result = message.data.result;
					variables.rand = message.data.rand;
					variables.firstNumber = message.data.firstNumber;
					variables.secondNumber = message.data.secondNumber;
					variables.Example1 = message.data.Example1;
					variables.Example2 = message.data.Example2;
					variables.Example3 = message.data.Example3;
					variables.Example4 = message.data.Example4;
					variables.Example5 = message.data.Example5;
					variables.Example6 = message.data.Example6;
					variables.Example7 = message.data.Example7;
					variables.Example8 = message.data.Example8;
					variables.TimeDisplay = message.data.TimeDisplay;
				}
			});
			context.setPacketHandled(true);
		}
	}
}
