#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,140.251f]
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,93.016f]
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,31.793f]
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-32.967f]
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-111.878f]
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-179.665f]
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,110.903f]
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,41.446f]
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0 ^-1.918 ^3.632 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0 ^-1.918 ^3.643 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0 ^-1.918 ^3.656 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0 ^-1.918 ^3.67 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0 ^-1.918 ^3.686 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0 ^-1.918 ^3.7 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0 ^-1.918 ^3.713 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0 ^-1.918 ^3.726 ~ ~
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}