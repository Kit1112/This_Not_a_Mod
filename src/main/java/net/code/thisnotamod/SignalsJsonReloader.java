package net.code.thisnotamod.data;

import net.minecraft.server.packs.resources.ResourceManager;
import net.minecraft.server.packs.resources.ResourceManagerReloadListener;

public final class SignalsJsonReloader implements ResourceManagerReloadListener {
	@Override
	public void onResourceManagerReload(ResourceManager resourceManager) {
		SignalRegistry.reload(resourceManager);
	}
}
