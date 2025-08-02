#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-78.652f,0f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-81.543f,0f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-84.34f,0f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-87.093f,0f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-89.639f,0f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-87.866f,180f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-85.526f,180f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-83.203f,180f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-81.041f,180f]
execute if score #this.aj.anim aj.i matches 89 run tp @s ^0.398 ^-6.393 ^0.08 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^0.401 ^-6.392 ^0.06 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0.404 ^-6.393 ^0.04 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0.405 ^-6.394 ^0.021 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0.406 ^-6.396 ^0.003 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0.406 ^-6.398 ^-0.015 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0.405 ^-6.402 ^-0.032 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.403 ^-6.406 ^-0.048 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.401 ^-6.411 ^-0.063 ~ ~
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}