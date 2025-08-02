#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,39.09f,0f]
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,40.53f,0f]
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,42.06f,0f]
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,43.59f,0f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45.081f,0f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,49.207f,0f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,53.333f,0f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,57.216f,0f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,61.261f,0f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0 ^-5.399 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0 ^-5.387 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0 ^-5.375 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0 ^-5.364 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0 ^-5.355 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0 ^-5.352 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0 ^-5.35 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0 ^-5.347 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0 ^-5.345 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1099}