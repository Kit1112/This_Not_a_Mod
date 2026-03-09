package net.code.thisnotamod;

import java.util.List;

public interface OBBEntity {
    /**
     * Возвращает список всех зон (OBB) рабочей станции.
     */
    List<OBB> getOBBs();

    /**
     * Отключает стандартный квадратный хитбокс Minecraft,
     * если присутствуют кастомные OBB.
     */
    default boolean disableVanillaAABB() {
        return !this.getOBBs().isEmpty();
    }
}