#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.001f,-0.006f,102.473f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.995f,-0.003f,170.712f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.995f,0.003f,-119.917f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.001f,0.006f,-53.731f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.006f,0.002f,10.459f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.004f,-0.004f,72.467f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,-0.006f,132.104f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.994f,-0.002f,-170.815f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^-1.918 ^3.715 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^-1.918 ^3.701 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^-1.918 ^3.688 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^-1.918 ^3.674 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^-1.918 ^3.661 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^-1.918 ^3.647 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^-1.918 ^3.634 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^-1.918 ^3.621 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}