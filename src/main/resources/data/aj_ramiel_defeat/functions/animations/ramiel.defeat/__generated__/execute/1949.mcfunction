#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-24.953f,-90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-17.894f,-90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-10.976f,-90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-3.776f,-90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,3.282f,-90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,10.2f,-90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,17.259f,-90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,24.318f,-90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,31.376f,-90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-3.493 ^-2.489 ^-1.227 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.725 ^-2.334 ^-1.288 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.912 ^-2.176 ^-1.328 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.989 ^-1.992 ^-1.35 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-4.009 ^-1.776 ^-1.351 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-4.003 ^-1.547 ^-1.332 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.988 ^-1.314 ^-1.292 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.979 ^-1.101 ^-1.233 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.994 ^-0.925 ^-1.155 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:432}