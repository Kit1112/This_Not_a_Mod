#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-9.27f,0f]
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-7.74f,0f]
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-6.24f,0f]
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-4.74f,0f]
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-3.24f,0f]
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-1.74f,0f]
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-0.24f,0f]
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,1.23f,0f]
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,2.76f,0f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^1.33 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^1.348 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0 ^1.365 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0 ^1.382 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0 ^1.399 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0 ^1.415 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0 ^1.431 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0 ^1.446 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0 ^1.461 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2104}