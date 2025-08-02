#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0..80 run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/15364
execute if score #this.aj.anim aj.i matches 81..160 run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/15527
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime