#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-42.29f,33.538f,-27.271f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-38.311f,34.617f,-24.705f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.078f,35.764f,-21.976f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-29.688f,36.954f,-19.145f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-25.235f,38.161f,-16.273f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-20.901f,39.335f,-13.479f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-16.605f,40.5f,-10.708f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-12.45f,41.626f,-8.028f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0.098 ^2.073 ^-3.31 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0.122 ^1.914 ^-3.083 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0.138 ^1.681 ^-2.873 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0.145 ^1.404 ^-2.694 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0.142 ^1.093 ^-2.556 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0.129 ^0.768 ^-2.468 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0.108 ^0.427 ^-2.431 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.082 ^0.082 ^-2.446 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:578}