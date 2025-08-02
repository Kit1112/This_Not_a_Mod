#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0..60 run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/2955
execute if score #this.aj.anim aj.i matches 61..120 run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/3086
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime