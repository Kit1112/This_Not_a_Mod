#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,55.192f,0f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,51.163f,0f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,47.108f,0f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,43.032f,0f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,38.937f,0f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,34.826f,0f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,30.622f,0f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,26.574f,0f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,22.438f,0f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.333 ^-6.465 ^0.232 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.316 ^-6.47 ^0.255 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.297 ^-6.473 ^0.276 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.277 ^-6.475 ^0.297 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.255 ^-6.477 ^0.316 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.232 ^-6.478 ^0.333 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.207 ^-6.479 ^0.349 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.182 ^-6.479 ^0.363 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.155 ^-6.478 ^0.375 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}