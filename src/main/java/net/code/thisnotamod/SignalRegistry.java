package net.code.thisnotamod.data;

import com.google.gson.*;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.server.packs.resources.Resource;
import net.minecraft.server.packs.resources.ResourceManager;

import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.*;

public final class SignalRegistry {
	private static final Map<Integer, Entry> BY_ID = new HashMap<>();
	public record Entry(int id, String name, Double size) {}

	public static void reload(ResourceManager mgr) {
		BY_ID.clear();
		try {
			ResourceLocation loc = new ResourceLocation("thisnotamod", "signals.json"); // data/thisnotamod/signals.json
			Optional<Resource> resOpt = mgr.getResource(loc);
			if (resOpt.isEmpty()) return;

			try (var in = resOpt.get().open();
			     var reader = new InputStreamReader(in, StandardCharsets.UTF_8)) {
				JsonArray arr = JsonParser.parseReader(reader).getAsJsonArray();
				for (JsonElement el : arr) {
					JsonObject o = el.getAsJsonObject();
					int id = o.get("id").getAsInt();
					// size может быть строкой в твоём JSON -> аккуратно парсим
					Double size = null;
					if (o.has("size")) {
						if (o.get("size").isJsonPrimitive() && ((JsonPrimitive)o.get("size")).isString())
							size = Double.valueOf(o.get("size").getAsString());
						else
							size = o.get("size").getAsDouble();
					}
					String name = o.has("name") ? o.get("name").getAsString() : ("signal_"+id);
					BY_ID.put(id, new Entry(id, name, size));
				}
			}
		} catch (Exception e) {
			// лог при желании
		}
	}

	public static Double getSize(int id) {
		Entry e = BY_ID.get(id);
		return (e == null) ? null : e.size();
	}

	public static Entry get(int id) {
		return BY_ID.get(id);
	}
}
