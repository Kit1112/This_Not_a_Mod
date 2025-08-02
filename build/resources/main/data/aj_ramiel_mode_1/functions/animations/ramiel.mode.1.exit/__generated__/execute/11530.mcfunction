#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-88.23f,-180f]
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-89.76f,-180f]
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-88.77f,0f]
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-86.97f,0f]
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-85.47f,0f]
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-83.94f,0f]
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-82.44f,0f]
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-80.94f,0f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-79.44f,0f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0 ^-5.469 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0 ^-5.453 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0 ^-5.437 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0 ^-5.417 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0 ^-5.399 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0 ^-5.381 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0 ^-5.363 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^-5.344 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^-5.326 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1262}