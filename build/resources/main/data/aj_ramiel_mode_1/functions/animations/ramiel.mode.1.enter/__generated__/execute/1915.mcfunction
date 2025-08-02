#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,18.48f,0f]
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,15.42f,0f]
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,12.48f,0f]
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,8.88f,0f]
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,5.88f,0f]
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,2.88f,0f]
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-0.12f,0f]
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-3.12f,0f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-6.12f,0f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^-0.49 ^-4.936 ^1.466 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^-0.409 ^-4.972 ^1.482 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.33 ^-5.007 ^1.492 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.234 ^-5.052 ^1.496 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.154 ^-5.09 ^1.494 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.075 ^-5.128 ^1.485 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0.003 ^-5.167 ^1.469 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0.079 ^-5.206 ^1.448 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0.152 ^-5.245 ^1.419 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:529}
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:531}
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:532}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:533}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:534}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:535}
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:536}
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:537}
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:538}