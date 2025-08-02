#built using mc-build (https://github.com/mc-build/mc-build)

execute unless score r.attacking value matches 1 run scoreboard players set r.retaliate value 1
tag @s add blocked
execute store result score Attacker UUID0 run data get entity @s Owner[0]
execute store result score Attacker UUID1 run data get entity @s Owner[1]
execute store result score Attacker UUID2 run data get entity @s Owner[2]
execute store result score Attacker UUID3 run data get entity @s Owner[3]
execute unless score r.attacking value matches 1 run data remove entity @s Motion[]
execute unless score r.attacking value matches 1 positioned ~ ~-1 ~ run function ramiel:atfield/summon
execute unless score r.attacking value matches 1 run playsound ramiel:at_field.hit master @a[distance=..100] ~ ~ ~ 100
execute as @e[tag=justsummoned,tag=at_field,limit=1] at @s run function ramiel:atfield/__generated__/block/8