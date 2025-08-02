#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ^-3.785 ^-4.284 ^-6.556 ~ ~
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12641
execute store result entity @s Air short 1 run time query gametime