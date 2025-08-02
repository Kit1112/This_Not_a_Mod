#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.284f,45f,0f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.423f,45f,0f]
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.575f,45f,0f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.739f,45f,0f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.91f,45f,0f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [168.099f,45f,0f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [168.295f,45f,0f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [168.5f,45f,0f]
execute if score #this.aj.anim aj.i matches 61..68 run tp @s ^0 ^-1.918 ^-3.845 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:191}