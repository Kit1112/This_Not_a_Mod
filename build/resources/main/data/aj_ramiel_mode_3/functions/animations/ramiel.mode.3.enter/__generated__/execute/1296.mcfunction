#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.165f,-48.3f,176.524f]
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.181f,-48.324f,176.495f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.196f,-48.345f,176.47f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.207f,-48.362f,176.449f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.218f,-48.377f,176.43f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.227f,-48.39f,176.415f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.234f,-48.4f,176.402f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.239f,-48.408f,176.393f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.243f,-48.413f,176.387f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.245f,-48.416f,176.383f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0.235 ^-1.538 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.235 ^-1.539 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.235 ^-1.54 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.235 ^-1.541 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 57..58 run tp @s ^0.235 ^-1.542 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 59..62 run tp @s ^0.235 ^-1.543 ^-0.235 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:264}
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:276}