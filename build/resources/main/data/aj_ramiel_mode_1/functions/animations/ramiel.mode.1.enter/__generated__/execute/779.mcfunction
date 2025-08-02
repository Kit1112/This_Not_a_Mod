#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-48.971f,-180f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-52.553f,-180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-56.073f,180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-59.526f,180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-63.042f,-180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-66.218f,180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-69.45f,-180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-72.727f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-75.731f,-180f]
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.395 ^2.52 ^-0.343 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0.415 ^2.516 ^-0.318 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0.434 ^2.513 ^-0.292 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0.451 ^2.509 ^-0.265 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0.466 ^2.506 ^-0.237 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0.479 ^2.504 ^-0.211 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0.49 ^2.502 ^-0.184 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0.5 ^2.5 ^-0.155 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0.507 ^2.499 ^-0.129 ~ ~
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}