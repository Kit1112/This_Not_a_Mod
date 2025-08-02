#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,41.029f,-180f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,37.447f,-180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,33.927f,-180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,30.474f,-180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,26.958f,-180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,23.782f,-180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,20.55f,-180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,17.273f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,14.269f,-180f]
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.328 ^2.497 ^-0.377 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.304 ^2.493 ^-0.397 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.279 ^2.489 ^-0.415 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.253 ^2.486 ^-0.431 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.227 ^2.483 ^-0.445 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.201 ^2.48 ^-0.457 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.175 ^2.478 ^-0.468 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.148 ^2.476 ^-0.477 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.123 ^2.475 ^-0.484 ~ ~
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}