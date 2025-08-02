#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0..35 run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/12303
execute if score #this.aj.anim aj.i matches 36..70 run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/12336
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.core3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime