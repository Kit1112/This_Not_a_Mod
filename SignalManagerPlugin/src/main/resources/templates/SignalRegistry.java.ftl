package ${modPackage}.signals;

import com.google.gson.*;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.loading.FMLPaths;

import java.io.*;
import java.nio.file.*;
import java.util.*;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public final class SignalRegistry {
    private static JsonArray SIGNALS = new JsonArray();

    public static JsonArray all() { return SIGNALS; }

    public static Optional<JsonObject> byId(int id) {
        for (var el : SIGNALS) {
            var obj = el.getAsJsonObject();
            if (obj.get("id").getAsInt() == id) return Optional.of(obj);
        }
        return Optional.empty();
    }

    public static List<JsonObject> byType(String type) {
        List<JsonObject> out = new ArrayList<>();
        for (var el : SIGNALS) {
            var obj = el.getAsJsonObject();
            if (obj.get("type").getAsString().equals(type)) out.add(obj);
        }
        return out;
    }

    @SubscribeEvent
    public static void onCommonSetup(FMLCommonSetupEvent e) {
        load();
    }

    public static void load() {
        Path cfg = FMLPaths.CONFIGDIR.get().resolve("signals.json");
        if (!Files.exists(cfg)) {
            try {
                Files.createFile(cfg);
                try (Writer w = Files.newBufferedWriter(cfg)) {
                    w.write("[]");
                }
            } catch (IOException ex) { ex.printStackTrace(); }
        }
        try (Reader r = Files.newBufferedReader(cfg)) {
            SIGNALS = JsonParser.parseReader(r).getAsJsonArray();
        } catch (Exception ex) {
            SIGNALS = new JsonArray();
            ex.printStackTrace();
        }
    }
}
