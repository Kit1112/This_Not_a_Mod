#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-58.23f,-180f]
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-59.76f,-180f]
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-61.23f,-180f]
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-63.03f,-180f]
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-64.53f,-180f]
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-66.06f,-180f]
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-67.56f,-180f]
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-69.06f,-180f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-70.56f,-180f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0 ^-4.923 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0 ^-4.909 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0 ^-4.896 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0 ^-4.878 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0 ^-4.864 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0 ^-4.848 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0 ^-4.833 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^-4.817 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^-4.801 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1538}