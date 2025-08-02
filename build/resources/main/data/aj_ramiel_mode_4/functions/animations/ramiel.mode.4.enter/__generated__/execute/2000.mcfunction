#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [54.922f,57.093f,179.5f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [38.398f,55.19f,172.319f]
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.215f,45f,180f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.368f,45f,180f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [33.521f,45f,-180f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [32.725f,45f,180f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [31.962f,45f,180f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [31.246f,45f,-180f]
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.561 ^-1.905 ^-3.721 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.277 ^-1.879 ^-3.78 ~ ~
execute if score #this.aj.anim aj.i matches 18..23 run tp @s ^0 ^-1.918 ^-3.845 ~ ~
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:337}
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:338}
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:339}