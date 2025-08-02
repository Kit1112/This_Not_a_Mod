#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75.555f,-180f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-71.557f,180f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-67.591f,-180f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-63.662f,180f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-59.849f,-180f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-56f,-180f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-52.198f,-180f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-48.371f,-180f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-44.745f,-180f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.409 ^-6.439 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0.401 ^-6.434 ^-0.134 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.391 ^-6.43 ^-0.161 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.379 ^-6.426 ^-0.187 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.365 ^-6.421 ^-0.212 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.35 ^-6.417 ^-0.236 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.334 ^-6.413 ^-0.259 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.316 ^-6.408 ^-0.281 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.297 ^-6.404 ^-0.3 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}