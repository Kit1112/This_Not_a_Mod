#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,78.652f,180f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,81.543f,-180f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,84.34f,-180f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,87.093f,180f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,89.639f,-180f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,87.866f,0f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,85.526f,0f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,83.203f,0f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,81.041f,0f]
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.467 ^-6.346 ^-0.094 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.471 ^-6.346 ^-0.07 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.474 ^-6.346 ^-0.047 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-0.476 ^-6.347 ^-0.024 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-0.476 ^-6.349 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-0.476 ^-6.351 ^0.018 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-0.475 ^-6.355 ^0.037 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-0.473 ^-6.359 ^0.056 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-0.47 ^-6.364 ^0.074 ~ ~
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}