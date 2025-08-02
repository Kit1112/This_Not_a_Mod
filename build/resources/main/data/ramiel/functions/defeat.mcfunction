#built using mc-build (https://github.com/mc-build/mc-build)

execute at @e[tag=RAMIEL] run summon item ~ ~ ~ {Item:{id:"terramity:overclocked_microwave",Count:1b}}
scoreboard players set r.dying value 1
execute at @e[tag=RAMIEL] run playsound ramiel:ramiel.defeat master @a[distance=..100] ~ ~ ~ 100
scoreboard players reset Ramiel r.health
execute as @e[tag=RAMIEL] at @s run function ramiel:__generated__/block/6
schedule function ramiel:__generated__/sequence/1 130t replace
schedule function ramiel:__generated__/sequence/2 150t replace
