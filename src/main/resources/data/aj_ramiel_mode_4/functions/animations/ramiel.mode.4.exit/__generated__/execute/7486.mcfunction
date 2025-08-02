#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0..60 run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7487
execute if score #this.aj.anim aj.i matches 61..120 run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7539
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime