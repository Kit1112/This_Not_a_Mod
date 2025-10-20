package com.example.signalmanager.services;

import com.google.gson.*;
import net.mcreator.ui.MCreator;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.Objects;

public final class SignalIO {

    private SignalIO() {}

    public static Path workspaceResourcesDir(MCreator mc) {
        return mc.getWorkspaceFolder().toPath().resolve("src/main/resources");
    }

    public static Path workspaceJavaDir(MCreator mc) {
        return mc.getWorkspaceFolder().toPath().resolve("src/main/java");
    }

    public static String modid(MCreator mc) {
        return mc.getWorkspaceSettings().getModID();
    }

    public static String modPackage(MCreator mc) {
        String pkg = mc.getWorkspaceSettings().getModElementsPackage();
        if (pkg == null || pkg.isEmpty()) return "com.example.mod";
        return pkg;
    }

    public static Path signalsJSONPath(MCreator mc) {
        return workspaceResourcesDir(mc).resolve("data").resolve(modid(mc)).resolve("signals.json");
    }

    public static Path registryJavaPath(MCreator mc) {
        String pkg = modPackage(mc) + ".signals";
        return workspaceJavaDir(mc).resolve(pkg.replace('.', '/')).resolve("SignalRegistry.java");
    }

    public static void ensureWorkspaceScaffold(MCreator mc) throws IOException {
        Path json = signalsJSONPath(mc);
        Files.createDirectories(json.getParent());
        if (!Files.exists(json)) {
            System.out.println("[SignalManager] creating JSON at " + json);
            writeString(json, "[]");
        }

        Path java = registryJavaPath(mc);
        if (!Files.exists(java)) {
            Files.createDirectories(java.getParent());
            String template = readResource("/templates/SignalRegistry.java.ftl");
            String out = template
                    .replace("${modPackage}", modPackage(mc))
                    .replace("${modid}", modid(mc));
            System.out.println("[SignalManager] creating registry at " + java);
            writeString(java, out);
        }
    }

    private static String readResource(String res) throws IOException {
        try (InputStream in = Objects.requireNonNull(SignalIO.class.getResourceAsStream(res), "Missing resource: " + res)) {
            return new String(in.readAllBytes(), StandardCharsets.UTF_8);
        }
    }

    public static JsonArray loadSignals(MCreator mc) {
        Path p = signalsJSONPath(mc);
        if (!Files.exists(p)) {
            try { ensureWorkspaceScaffold(mc); } catch (IOException e) { e.printStackTrace(); }
        }
        try (Reader r = Files.newBufferedReader(p)) {
            JsonElement el = JsonParser.parseReader(r);
            return el != null && el.isJsonArray() ? el.getAsJsonArray() : new JsonArray();
        } catch (Exception ex) {
            ex.printStackTrace();
            return new JsonArray();
        }
    }

    public static void saveSignals(MCreator mc, JsonArray data) throws IOException {
        Path p = signalsJSONPath(mc);
        Files.createDirectories(p.getParent());
        try (Writer w = Files.newBufferedWriter(p)) {
            new GsonBuilder().setPrettyPrinting().create().toJson(data, w);
        }
        System.out.println("[SignalManager] saved JSON at " + p);
    }

    private static void writeString(Path path, String s) throws IOException {
        Files.createDirectories(path.getParent());
        try (Writer w = Files.newBufferedWriter(path, StandardCharsets.UTF_8)) {
            w.write(s);
        }
    }
}
