#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,82.74f,-180f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,81.24f,-180f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,79.74f,-180f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,78.24f,-180f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,76.74f,-180f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75.24f,-180f]
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,73.74f,-180f]
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,72.24f,-180f]
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,70.74f,-180f]
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0 ^0.419 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0 ^0.432 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0 ^0.445 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0 ^0.459 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0 ^0.472 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0 ^0.486 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0 ^0.5 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0 ^0.513 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0 ^0.527 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2345}
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2357}