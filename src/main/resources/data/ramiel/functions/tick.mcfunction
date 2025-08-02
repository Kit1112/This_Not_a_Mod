#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[tag=RAMIEL] at @s run function ramiel:__generated__/block/0
execute as @a run function ramiel:uuidstore
execute as @e[tag=at_field] at @s run function ramiel:__generated__/block/2
execute store result score Ramiel r.health run data get entity @e[tag=ramiel,tag=damager,limit=1] Health 1
execute store result bossbar minecraft:ramiel value run scoreboard players get Ramiel r.health
execute as @e[tag=emitter] if entity @e[tag=RAMIEL] if score r.firing_mode value matches 1 at @s if score shootLength value matches 1.. run function ramiel:shoot
execute as @a[scores={cs.shakeTimer=1..}] at @s run function ramiel:camerashake/main
execute as @e[tag=aimer] at @s facing entity @a[tag=targeted,limit=1] eyes run function ramiel:__generated__/block/3
function ramiel:ai