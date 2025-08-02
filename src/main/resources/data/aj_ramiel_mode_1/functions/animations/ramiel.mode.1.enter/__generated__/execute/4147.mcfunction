#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,72.818f,0f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,66.974f,0f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,61.13f,0f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,55.286f,0f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,49.208f,0f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,43.597f,0f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,37.753f,0f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,31.675f,0f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,25.948f,0f]
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0 ^-4.885 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0 ^-4.889 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0 ^-4.893 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0 ^-4.897 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0 ^-4.901 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0 ^-4.905 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0 ^-4.909 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0 ^-4.913 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0 ^-4.917 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1243}
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1244}
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1246}
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1249}
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1250}