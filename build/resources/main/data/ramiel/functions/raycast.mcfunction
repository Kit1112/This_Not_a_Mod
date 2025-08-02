#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add Ramiel range 1
particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0 1 force
particle minecraft:sonic_boom ~ ~ ~ 0.3 0.3 0.3 0.1 1 force
execute unless block ~ ~ ~ #ramiel:passthrough run function ramiel:__generated__/block/13
execute as @a[distance=..5,tag=!hit] unless score @s shielding matches 1.. at @s run function ramiel:__generated__/block/14
execute as @a[distance=..3,scores={shielding=1..},tag=!shielddamaged] run function ramiel:__generated__/block/15
execute unless score Ramiel range >= r.maxRange range positioned ^ ^ ^1 run function ramiel:raycast
execute if score Ramiel range >= r.maxRange range run function ramiel:__generated__/block/16