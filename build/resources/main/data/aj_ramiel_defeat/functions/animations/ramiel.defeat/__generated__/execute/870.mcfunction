#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.624f,16.678f,105.118f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.404f,24.378f,107.612f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.135f,31.727f,110.103f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.78f,39.176f,112.766f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.312f,46.426f,115.535f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-32.627f,53.916f,118.658f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-31.636f,61.054f,122.032f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.916f,68.417f,126.275f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-26.346f,75.829f,132.461f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^4.691 ^-2.676 ^1.623 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^4.846 ^-2.688 ^1.553 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^5.006 ^-2.723 ^1.46 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^5.179 ^-2.783 ^1.344 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^5.353 ^-2.869 ^1.209 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^5.537 ^-2.989 ^1.052 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^5.711 ^-3.133 ^0.886 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^5.887 ^-3.314 ^0.701 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^6.056 ^-3.529 ^0.504 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:114}