#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.108f,30.064f,-35.537f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.328f,30.004f,-35.679f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.536f,29.948f,-35.813f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.732f,29.895f,-35.939f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.916f,29.845f,-36.058f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.088f,29.799f,-36.169f]
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.248f,29.755f,-36.272f]
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-0.005 ^2.361 ^-4.208 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-0.006 ^2.385 ^-4.235 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-0.008 ^2.407 ^-4.261 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-0.01 ^2.428 ^-4.287 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-0.011 ^2.449 ^-4.311 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-0.013 ^2.468 ^-4.334 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-0.014 ^2.487 ^-4.356 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:578}