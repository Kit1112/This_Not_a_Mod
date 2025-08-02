#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,-0.003f,125.656f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,-0.003f,153.06f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.997f,-0.001f,-178.425f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.997f,0f,-148.765f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.997f,0.002f,-118.554f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,0.003f,-85.874f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.001f,0.004f,-52.575f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0 ^-1.918 ^4.212 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0 ^-1.918 ^4.198 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0 ^-1.918 ^4.185 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0 ^-1.918 ^4.172 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0 ^-1.918 ^4.158 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0 ^-1.918 ^4.145 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0 ^-1.918 ^4.131 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}