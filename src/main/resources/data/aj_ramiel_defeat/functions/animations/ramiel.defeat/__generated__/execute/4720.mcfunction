#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-167.175f,48.714f,100.779f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-166.999f,49.371f,99.144f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-166.834f,50.123f,97.14f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-166.717f,50.839f,95.071f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-166.649f,51.518f,92.938f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-166.63f,52.146f,90.786f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-166.658f,52.759f,88.482f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-3.913 ^-4.539 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-4.023 ^-4.618 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-4.211 ^-4.777 ^-0.884 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-4.21 ^-4.953 ^-0.85 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-4.166 ^-5.127 ^-0.809 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.124 ^-5.304 ^-0.77 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.082 ^-5.484 ^-0.731 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-4.043 ^-5.663 ^-0.694 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-4.002 ^-5.85 ^-0.656 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:596}