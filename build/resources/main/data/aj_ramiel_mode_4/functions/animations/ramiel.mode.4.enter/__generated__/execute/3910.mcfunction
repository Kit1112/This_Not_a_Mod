#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.002f,0.001f,2.377f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.003f,0f,22.107f]
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.003f,-0.001f,42.678f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.002f,-0.002f,64.124f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.001f,-0.002f,86.022f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,-0.003f,109.775f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,-0.003f,134.048f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,-0.002f,159.33f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0 ^-1.918 ^5.06 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0 ^-1.918 ^5.073 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0 ^-1.918 ^5.086 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0 ^-1.918 ^5.099 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0 ^-1.918 ^5.112 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0 ^-1.918 ^5.125 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0 ^-1.918 ^5.138 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0 ^-1.918 ^5.152 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1528}