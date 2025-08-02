#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,65.047f,90f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,72.106f,90f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,79.024f,90f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,86.224f,90f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,86.718f,-90f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,79.8f,-90f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,72.741f,-90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,65.682f,-90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,58.624f,-90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^3.53 ^0.019 ^0.901 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^3.762 ^0.115 ^0.656 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^3.949 ^0.179 ^0.407 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^4.026 ^0.229 ^0.141 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^4.046 ^0.28 ^-0.122 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^4.04 ^0.316 ^-0.378 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^4.025 ^0.325 ^-0.634 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^4.016 ^0.289 ^-0.88 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^4.031 ^0.195 ^-1.112 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:50}