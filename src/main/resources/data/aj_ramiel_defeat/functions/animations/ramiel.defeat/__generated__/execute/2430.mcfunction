#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-175.434f,-82.443f,-109.465f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-176.868f,-75.748f,-110.298f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.321f,-69.264f,-112.022f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.523f,-62.599f,-114.037f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.61f,-56.019f,-116.113f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.639f,-49.12f,-118.323f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.631f,-42.443f,-120.468f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.594f,-35.443f,-122.708f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.535f,-28.253f,-124.992f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-2.02 ^-2.411 ^0.058 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-2.127 ^-2.524 ^0.063 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-2.233 ^-2.637 ^0.067 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-2.345 ^-2.757 ^0.07 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-2.457 ^-2.879 ^0.072 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-2.576 ^-3.009 ^0.073 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-2.692 ^-3.137 ^0.073 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-2.815 ^-3.273 ^0.072 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-2.942 ^-3.413 ^0.07 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:496}