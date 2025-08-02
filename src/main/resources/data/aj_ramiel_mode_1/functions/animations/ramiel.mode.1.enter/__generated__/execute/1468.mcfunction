#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,78.652f,0f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,81.543f,0f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,84.34f,0f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,87.093f,0f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,89.639f,0f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,87.866f,180f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,85.526f,180f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,83.203f,180f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,81.041f,180f]
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.57 ^2.51 ^0.114 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.575 ^2.51 ^0.086 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.579 ^2.51 ^0.057 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-0.581 ^2.511 ^0.03 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-0.582 ^2.513 ^0.004 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-0.581 ^2.515 ^-0.022 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-0.58 ^2.519 ^-0.045 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-0.578 ^2.523 ^-0.069 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-0.575 ^2.528 ^-0.091 ~ ~
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}