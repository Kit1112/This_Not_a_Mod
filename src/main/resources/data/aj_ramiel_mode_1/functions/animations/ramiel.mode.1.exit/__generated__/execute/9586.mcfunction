#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-33.591f,-180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-37.705f,-180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-41.723f,-180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-45.806f,-180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-49.868f,-180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-53.905f,180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-57.835f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-61.814f,-180f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-65.837f,-180f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0.263 ^-6.432 ^-0.397 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0.291 ^-6.431 ^-0.377 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0.317 ^-6.429 ^-0.355 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0.341 ^-6.427 ^-0.332 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0.364 ^-6.424 ^-0.307 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0.385 ^-6.42 ^-0.281 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0.403 ^-6.415 ^-0.254 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0.42 ^-6.41 ^-0.225 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^0.434 ^-6.403 ^-0.195 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}