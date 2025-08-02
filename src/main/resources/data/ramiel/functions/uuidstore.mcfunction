#built using mc-build (https://github.com/mc-build/mc-build)

execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]
scoreboard players remove @s[scores={shielding=1..}] shielding 1
execute as @s[advancements={ramiel:shielding=true}] run function ramiel:__generated__/block/1