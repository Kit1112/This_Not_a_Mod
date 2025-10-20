# SignalManager (MCreator 2024.2 Java plugin)

Adds a new **Signals** top-level menu with:
- **Create New Signal** (full-screen JavaFX form)
- **Edit Signal Datatable** (full-screen JavaFX table with search/filter/edit/delete)

Also generates a runtime helper **SignalRegistry** for your Forge 47.3.0 / MC 1.20.1 mod and manages `resources/data/<modid>/signals.json`.

## Build

1) Install MCreator **sources** somewhere (clone https://github.com/MCreator/MCreator) and set `mcreator_path` in `gradle.properties` to that folder.
2) Run:

```
./gradlew jar
```

The plugin ZIP will be at `build/libs/SignalManager-<version>.zip`.

## Run MCreator with plugin (optional)

```
./gradlew runMCreatorWithPlugin
```

## Install

Copy the built ZIP to **MCreator > File > Manage Plugins... > Open plugins folder** and restart MCreator.

