#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.844f,-24.269f,167.124f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.411f,-23.826f,167.073f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-71.004f,-23.408f,167.024f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.62f,-23.015f,166.979f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.259f,-22.646f,166.936f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.921f,-22.301f,166.895f]
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.606f,-21.978f,166.858f]
execute if score #this.aj.anim aj.i matches 39 run tp @s ^3.205 ^-4.184 ^-5.214 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^3.19 ^-4.226 ^-5.23 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^3.176 ^-4.266 ^-5.245 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^3.163 ^-4.305 ^-5.258 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^3.152 ^-4.342 ^-5.27 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^3.142 ^-4.378 ^-5.281 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^3.132 ^-4.412 ^-5.291 ~ ~
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1102}