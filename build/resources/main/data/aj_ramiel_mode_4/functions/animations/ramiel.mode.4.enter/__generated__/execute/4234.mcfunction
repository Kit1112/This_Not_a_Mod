#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.003f,-0.003f,70.863f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,-0.004f,142.352f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.995f,0.001f,-144.973f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,0.005f,-71.302f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.005f,0.002f,3.181f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.003f,-0.004f,78.286f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.997f,-0.004f,152.314f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.995f,0.002f,-130.38f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0 ^-1.918 ^3.916 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^-1.918 ^3.903 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^-1.918 ^3.889 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0 ^-1.918 ^3.876 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0 ^-1.918 ^3.862 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0 ^-1.918 ^3.849 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0 ^-1.918 ^3.836 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0 ^-1.918 ^3.822 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}