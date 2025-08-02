#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-10.452f,0f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-9.962f,0f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-9.362f,0f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-8.624f,0f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-7.765f,0f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-6.758f,0f]
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-5.59f,0f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-4.25f,0f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-2.723f,0f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0 ^-3.743 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0 ^-3.733 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0 ^-3.722 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0 ^-3.712 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0 ^-3.702 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0 ^-3.692 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0 ^-3.682 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0 ^-3.672 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0 ^-3.662 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2576}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2564}