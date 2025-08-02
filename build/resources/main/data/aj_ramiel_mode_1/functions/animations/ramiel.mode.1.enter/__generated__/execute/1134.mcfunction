#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,11.348f,-180f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,8.457f,-180f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,5.66f,-180f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,2.907f,-180f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,0.361f,-180f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-2.134f,-180f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-4.474f,-180f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-6.797f,-180f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-8.959f,-180f]
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.098 ^2.475 ^-0.49 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.073 ^2.474 ^-0.494 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.049 ^2.475 ^-0.497 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-0.025 ^2.476 ^-0.499 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-0.003 ^2.478 ^-0.5 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0.019 ^2.48 ^-0.499 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0.039 ^2.484 ^-0.498 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.059 ^2.488 ^-0.496 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.078 ^2.493 ^-0.494 ~ ~
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}