#built using mc-build (https://github.com/mc-build/mc-build)

execute unless score r.attacking value matches 1 run tag @a remove targeted
execute at @e[tag=RAMIEL] as @a[distance=..50,tag=!debug,gamemode=survival] run function ramiel:__generated__/block/4
execute if entity @e[tag=targeted] unless score r.attacking value matches 1 unless score Ramiel r.health matches ..0 run function ramiel:attack