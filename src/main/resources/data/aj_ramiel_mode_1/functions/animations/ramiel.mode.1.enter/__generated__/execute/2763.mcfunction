#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-14.445f,0f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-18.443f,0f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-22.409f,0f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-26.338f,0f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-30.151f,0f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-34f,0f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-37.802f,0f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-41.629f,0f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-45.255f,0f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.101 ^-6.453 ^0.393 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0.128 ^-6.449 ^0.385 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.155 ^-6.445 ^0.375 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.18 ^-6.44 ^0.364 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.204 ^-6.436 ^0.351 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.227 ^-6.432 ^0.337 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.249 ^-6.427 ^0.321 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.27 ^-6.423 ^0.303 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.288 ^-6.419 ^0.286 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}