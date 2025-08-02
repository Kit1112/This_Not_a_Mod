#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-84.197f,-36.916f,168.595f]
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-78.978f,-31.572f,167.974f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.976f,-27.475f,167.497f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-74.387f,-26.873f,167.427f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.826f,-26.298f,167.36f]
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-73.302f,-25.761f,167.298f]
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.783f,-25.23f,167.236f]
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-72.31f,-24.746f,167.18f]
execute if score #this.aj.anim aj.i matches 31 run tp @s ^3.171 ^-2.808 ^-5.243 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^3.229 ^-3.391 ^-5.194 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^3.318 ^-3.905 ^-5.087 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^3.297 ^-3.955 ^-5.112 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^3.276 ^-4.004 ^-5.136 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^3.257 ^-4.05 ^-5.157 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^3.238 ^-4.097 ^-5.178 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^3.221 ^-4.14 ^-5.196 ~ ~
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1102}