
package com.example.signalmanager.services;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import java.util.HashSet;
import java.util.Set;

public final class Validation {

    private Validation() {}

    public static String validateSignal(JsonObject o, JsonArray existing) {
        // id unique
        Set<Integer> ids = new HashSet<>();
        for (var el : existing) {
            try {
                int id = el.getAsJsonObject().get("id").getAsInt();
                ids.add(id);
            } catch (Exception ignored) {}
        }
        int id = o.get("id").getAsInt();
        if (ids.contains(id)) return "ID must be unique";

        if (!o.has("name") || o.get("name").getAsString().isBlank())
            return "Name must not be empty";

        if (!o.has("type")) return "Type is required";
        String type = o.get("type").getAsString();
        if (!type.equals("regular") && !type.equals("trigger_event") && !type.equals("story"))
            return "Type must be one of: regular, trigger_event, story";

        if (!o.has("size")) return "Size is required";
        float size = o.get("size").getAsFloat();
        if (size < 0.1f || size > 10.0f) return "Size must be in [0.1; 10.0]";

        return null;
    }
}
