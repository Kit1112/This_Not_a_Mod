#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,29.52f,-180f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,32.46f,-180f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,35.52f,-180f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,38.52f,-180f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,41.52f,180f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,44.52f,180f]
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,45f,-180f]
execute if score #this.aj.anim aj.i matches 135 run tp @s ^-0.703 ^1.723 ^-1.242 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^-0.828 ^1.533 ^-1.301 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^-0.965 ^1.333 ^-1.352 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^-1.102 ^1.149 ^-1.385 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^-1.235 ^0.993 ^-1.394 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^-1.354 ^0.878 ^-1.377 ~ ~
execute if score #this.aj.anim aj.i matches 141..142 run tp @s ^-1.371 ^0.865 ^-1.371 ~ ~
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:416}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:417}
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:418}
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:339}
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:334}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:323}