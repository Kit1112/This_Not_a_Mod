#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-75.015f,-180f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-75.81f,-180f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-76.645f,-180f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-77.533f,-180f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-78.474f,-180f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-79.444f,-180f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-80.504f,-180f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-81.592f,-180f]
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-82.726f,-180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^-3.043 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0 ^-3.04 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0 ^-3.038 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^-3.034 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0 ^-3.031 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-3.027 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-3.023 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0 ^-3.019 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0 ^-3.014 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2641}