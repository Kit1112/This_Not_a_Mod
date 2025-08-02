#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ~ ~ ~ ~ 0
tag @s add aj.state.default
execute store result score @s aj.id run scoreboard players add #last_model.id aj.i 1
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/3
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone2,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/6
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone3,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/9
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone4,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/12
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.base,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/15
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone5,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/18
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone6,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/21
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone7,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/24
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone8,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/27
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.ramiel_statue.base2,tag=new,distance=..10.09] positioned as @s run function aj_ramiel_statue:__generated__/execute/30
tag @s remove new