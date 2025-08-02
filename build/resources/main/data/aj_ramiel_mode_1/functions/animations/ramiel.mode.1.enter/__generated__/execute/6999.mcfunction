#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0..70 run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/7000
execute if score #this.aj.anim aj.i matches 71..140 run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/7077
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime