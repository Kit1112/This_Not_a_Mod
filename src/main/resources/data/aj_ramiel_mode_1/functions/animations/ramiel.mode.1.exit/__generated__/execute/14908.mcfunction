#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-24.603f,0f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-21.021f,0f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-16.235f,0f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-11.463f,0f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-6.743f,0f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-1.819f,0f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,2.89f,0f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,7.734f,0f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,12.392f,0f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0 ^-2.641 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0 ^-2.607 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0 ^-2.564 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0 ^-2.521 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0 ^-2.48 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0 ^-2.436 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0 ^-2.394 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0 ^-2.351 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0 ^-2.308 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2641}