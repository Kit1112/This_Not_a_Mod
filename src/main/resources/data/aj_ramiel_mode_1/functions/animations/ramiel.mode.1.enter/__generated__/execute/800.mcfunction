#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-78.652f,180f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-81.543f,180f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-84.34f,-180f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-87.093f,-180f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-89.639f,180f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-87.866f,0f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-85.526f,0f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-83.203f,0f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-81.041f,0f]
execute if score #this.aj.anim aj.i matches 89 run tp @s ^0.513 ^2.498 ^-0.103 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^0.517 ^2.498 ^-0.077 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0.521 ^2.498 ^-0.052 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0.522 ^2.499 ^-0.027 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0.523 ^2.501 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0.523 ^2.504 ^0.019 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0.522 ^2.507 ^0.041 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.519 ^2.511 ^0.062 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.517 ^2.516 ^0.081 ~ ~
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}