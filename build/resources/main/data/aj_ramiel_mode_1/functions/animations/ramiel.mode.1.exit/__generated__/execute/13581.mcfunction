#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,16.126f,-180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,19.825f,-180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,23.449f,-180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,27.148f,-180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,30.847f,-180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,34.545f,-180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,38.17f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,41.868f,-180f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,45.641f,-180f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0 ^0.689 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0 ^0.66 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0 ^0.632 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0 ^0.603 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0 ^0.574 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0 ^0.545 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0 ^0.517 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0 ^0.488 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^0 ^0.459 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2151}
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2062}
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2061}
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2154}
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2059}
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2156}
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2058}
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2056}
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2159}