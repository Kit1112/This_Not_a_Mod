#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.813f,61.714f,84.611f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.842f,62.243f,86.915f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.809f,62.712f,89.205f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.714f,63.149f,91.617f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.565f,63.534f,94.052f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.354f,63.889f,96.655f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-11.102f,64.185f,99.219f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-10.796f,64.443f,101.946f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-10.445f,64.654f,104.78f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^5.856 ^-0.689 ^1.892 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^6.031 ^-0.935 ^1.878 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^6.199 ^-1.181 ^1.867 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^6.369 ^-1.442 ^1.859 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^6.533 ^-1.706 ^1.854 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^6.7 ^-1.99 ^1.851 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^6.857 ^-2.27 ^1.851 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^7.016 ^-2.568 ^1.854 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^7.172 ^-2.878 ^1.858 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:337}