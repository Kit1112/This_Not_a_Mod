#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.446f,-47.869f,-2.995f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.406f,-47.924f,-3.06f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.369f,-47.975f,-3.12f]
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.333f,-48.023f,-3.177f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.306f,-48.06f,-3.22f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.273f,-48.104f,-3.272f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.242f,-48.144f,-3.321f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.216f,-48.18f,-3.364f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.19f,-48.214f,-3.405f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.165f,-48.246f,-3.443f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.144f,-48.275f,-3.478f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.246 ^-1.507 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.246 ^-1.51 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.246 ^-1.512 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0.246 ^-1.514 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0.246 ^-1.516 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0.246 ^-1.518 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0.246 ^-1.52 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0.246 ^-1.522 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0.246 ^-1.523 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0.246 ^-1.525 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0.246 ^-1.526 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:174}