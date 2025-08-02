#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-39.159f,0f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-35.374f,0f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-31.465f,0f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-27.588f,0f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-23.67f,0f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-19.716f,0f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15.728f,0f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-11.71f,0f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-7.665f,0f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.256 ^-6.426 ^0.315 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.235 ^-6.43 ^0.331 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.212 ^-6.434 ^0.346 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.188 ^-6.439 ^0.36 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.163 ^-6.443 ^0.372 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0.137 ^-6.448 ^0.382 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0.11 ^-6.452 ^0.391 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0.082 ^-6.456 ^0.397 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.054 ^-6.46 ^0.402 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}