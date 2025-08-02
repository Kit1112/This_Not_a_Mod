#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,-0.005f,130.863f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.995f,0f,-157.648f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,0.005f,-84.973f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.004f,0.003f,-11.302f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.004f,-0.003f,63.181f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,-0.005f,138.286f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.995f,0.001f,-147.686f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,0.005f,-70.38f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0 ^-1.918 ^5.453 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^-1.918 ^5.467 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^-1.918 ^5.48 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0 ^-1.918 ^5.493 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0 ^-1.918 ^5.506 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0 ^-1.918 ^5.519 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0 ^-1.918 ^5.532 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0 ^-1.918 ^5.545 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1528}