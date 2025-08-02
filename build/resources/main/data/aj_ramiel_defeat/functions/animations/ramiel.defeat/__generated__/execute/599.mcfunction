#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-24.953f,90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-17.894f,90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-10.976f,90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-3.776f,90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,3.282f,90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,10.2f,90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,17.259f,90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,24.318f,90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,31.376f,90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.298 ^-2.654 ^1.581 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.53 ^-2.454 ^1.659 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^3.717 ^-2.25 ^1.712 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^3.794 ^-2.017 ^1.74 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^3.814 ^-1.753 ^1.741 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^3.808 ^-1.478 ^1.716 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^3.793 ^-1.198 ^1.665 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^3.784 ^-0.94 ^1.589 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^3.799 ^-0.722 ^1.489 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:82}