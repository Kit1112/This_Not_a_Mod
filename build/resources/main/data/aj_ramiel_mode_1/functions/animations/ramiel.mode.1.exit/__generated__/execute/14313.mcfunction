#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,79.548f,-180f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,80.038f,-180f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,80.638f,-180f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,81.376f,-180f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,82.235f,-180f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,83.242f,-180f]
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,84.41f,-180f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,85.75f,-180f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,87.277f,-180f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0 ^-0.093 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0 ^-0.103 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0 ^-0.114 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0 ^-0.124 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0 ^-0.134 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0 ^-0.144 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0 ^-0.154 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0 ^-0.164 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0 ^-0.174 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2466}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2454}