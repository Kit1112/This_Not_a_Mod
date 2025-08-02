#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-34.808f,180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-38.837f,180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-42.892f,-180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-46.968f,180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-51.063f,-180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-55.174f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-59.378f,-180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-63.426f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-67.562f,180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.366 ^2.64 ^-0.526 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.402 ^2.645 ^-0.499 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.436 ^2.648 ^-0.47 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0.469 ^2.65 ^-0.437 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0.499 ^2.652 ^-0.403 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0.526 ^2.653 ^-0.366 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0.552 ^2.654 ^-0.326 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.573 ^2.654 ^-0.287 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.592 ^2.653 ^-0.245 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}