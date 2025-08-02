#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0..60 run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/7984
execute if score #this.aj.anim aj.i matches 61..120 run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/8058
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime