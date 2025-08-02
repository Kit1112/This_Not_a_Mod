#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.645f,-7.533f,75.141f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.455f,-14.231f,72.933f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.236f,-20.712f,70.842f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.967f,-27.373f,68.753f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.64f,-33.947f,66.769f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.208f,-40.838f,64.798f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.662f,-47.504f,63.041f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [31.875f,-54.486f,61.435f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [30.673f,-61.649f,60.206f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-4.74 ^-3.374 ^1.426 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-4.756 ^-3.743 ^1.404 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-4.761 ^-4.094 ^1.365 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-4.756 ^-4.445 ^1.308 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-4.743 ^-4.781 ^1.235 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-4.723 ^-5.117 ^1.143 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-4.699 ^-5.426 ^1.039 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-4.672 ^-5.731 ^0.916 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-4.645 ^-6.021 ^0.776 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:464}