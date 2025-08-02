#built using mc-build (https://github.com/mc-build/mc-build)

particle minecraft:end_rod ~ ~ ~ 0 50 0 0.2 10000 force
execute positioned ~ ~20 ~ run function ramiel:__generated__/block/7
particle minecraft:end_rod ~ ~ ~ 20 0 0 0.2 5000 force
particle flash ~ ~ ~ 5 5 5 0 100 force
particle explosion_emitter ~ ~ ~ 1 1 1 0 4 force
particle flame ~ ~ ~ 1 1 1 1 600 force