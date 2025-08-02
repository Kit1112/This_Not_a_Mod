#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-42.29f,33.538f,-27.271f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-38.311f,34.617f,-24.705f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.078f,35.764f,-21.976f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.688f,36.954f,-19.145f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-25.235f,38.161f,-16.273f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-20.901f,39.335f,-13.479f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-16.605f,40.5f,-10.708f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-12.45f,41.626f,-8.028f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0.109 ^1.023 ^-2.598 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0.132 ^0.856 ^-2.455 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0.145 ^0.637 ^-2.34 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0.149 ^0.391 ^-2.257 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0.142 ^0.128 ^-2.212 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.127 ^-0.135 ^-2.209 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.104 ^-0.4 ^-2.247 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.078 ^-0.657 ^-2.325 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:395}