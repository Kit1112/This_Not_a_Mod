#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,87.33f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,13.66f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-60.921f]
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-134.717f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,151.012f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,79.37f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,9.078f]
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0 ^-1.918 ^3.847 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0 ^-1.918 ^3.861 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0 ^-1.918 ^3.874 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0 ^-1.918 ^3.887 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0 ^-1.918 ^3.901 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0 ^-1.918 ^3.915 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0 ^-1.918 ^3.928 ~ ~
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}