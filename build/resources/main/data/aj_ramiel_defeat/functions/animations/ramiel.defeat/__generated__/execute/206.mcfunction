#built using mc-build (https://github.com/mc-build/mc-build)

data modify entity @s Pose.Head set value [118.256f,-49.793f,-64.005f]
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~