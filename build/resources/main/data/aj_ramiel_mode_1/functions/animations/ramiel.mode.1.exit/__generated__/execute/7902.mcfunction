#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-86.404f,0f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-89.508f,-180f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-85.485f,180f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-81.285f,180f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-77.157f,-180f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-73.023f,180f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-68.886f,-180f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-64.749f,-180f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-60.617f,-180f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0.64 ^2.638 ^0.04 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.641 ^2.642 ^-0.006 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.639 ^2.645 ^-0.05 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.634 ^2.647 ^-0.097 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.625 ^2.65 ^-0.142 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.613 ^2.651 ^-0.187 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.598 ^2.653 ^-0.231 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.58 ^2.654 ^-0.273 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0.558 ^2.654 ^-0.314 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}