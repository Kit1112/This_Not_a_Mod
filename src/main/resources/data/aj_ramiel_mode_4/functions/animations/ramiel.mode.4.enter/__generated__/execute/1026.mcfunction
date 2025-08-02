#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [137.502f,-44.537f,10.278f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [137.794f,-44.574f,9.862f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [138.082f,-44.608f,9.452f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [138.37f,-44.642f,9.041f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [138.659f,-44.674f,8.631f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [138.947f,-44.704f,8.221f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [139.234f,-44.733f,7.813f]
execute if score #this.aj.anim aj.i matches 84..90 run tp @s ^0 ^-1.918 ^-3.845 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:154}