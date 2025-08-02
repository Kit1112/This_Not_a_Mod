#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.844f,24.269f,-167.124f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.411f,23.826f,-167.073f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.004f,23.408f,-167.024f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.62f,23.015f,-166.979f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.259f,22.646f,-166.936f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.921f,22.301f,-166.895f]
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.606f,21.978f,-166.858f]
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-3.445 ^-4.229 ^-5.092 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-3.454 ^-4.267 ^-5.098 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-3.462 ^-4.304 ^-5.104 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-3.471 ^-4.338 ^-5.109 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-3.479 ^-4.371 ^-5.113 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-3.488 ^-4.402 ^-5.117 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-3.496 ^-4.432 ^-5.12 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:840}