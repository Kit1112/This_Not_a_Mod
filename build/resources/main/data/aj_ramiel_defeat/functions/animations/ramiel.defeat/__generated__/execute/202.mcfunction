#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [144.77f,9.692f,-125.649f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~