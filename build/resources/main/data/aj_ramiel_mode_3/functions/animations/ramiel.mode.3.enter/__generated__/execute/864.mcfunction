#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.949f,-47.15f,-2.178f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.892f,-47.235f,-2.272f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.832f,-47.322f,-2.369f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.779f,-47.399f,-2.456f]
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.726f,-47.476f,-2.543f]
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.675f,-47.548f,-2.625f]
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.626f,-47.619f,-2.705f]
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.577f,-47.687f,-2.784f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.531f,-47.751f,-2.858f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.488f,-47.811f,-2.928f]
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0.246 ^-1.474 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0.246 ^-1.478 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0.246 ^-1.482 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.246 ^-1.486 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.246 ^-1.489 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.246 ^-1.493 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.246 ^-1.496 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.246 ^-1.499 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.246 ^-1.502 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.246 ^-1.505 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:165}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:170}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:174}