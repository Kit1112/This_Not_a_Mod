#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.335f,48.02f,3.173f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.363f,47.983f,3.129f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.39f,47.946f,3.085f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.419f,47.907f,3.039f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.448f,47.866f,2.992f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.478f,47.825f,2.944f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.509f,47.783f,2.895f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.54f,47.739f,2.844f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.572f,47.694f,2.792f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.604f,47.649f,2.74f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.636f,47.604f,2.688f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.302 ^-1.48 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.302 ^-1.478 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.302 ^-1.476 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.302 ^-1.475 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.302 ^-1.473 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.302 ^-1.47 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.302 ^-1.468 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.302 ^-1.466 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.302 ^-1.464 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-0.302 ^-1.462 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-0.302 ^-1.459 ^0.302 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:84}