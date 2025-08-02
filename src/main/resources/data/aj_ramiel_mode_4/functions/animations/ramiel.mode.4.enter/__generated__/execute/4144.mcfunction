#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,-0.001f,-175.036f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,0f,-160.244f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,0f,-144.848f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,0.001f,-129.141f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.998f,0.002f,-112.108f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,0.002f,-94.697f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,0.002f,-76.547f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0 ^-1.918 ^4.413 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0 ^-1.918 ^4.4 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0 ^-1.918 ^4.387 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0 ^-1.918 ^4.373 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0 ^-1.918 ^4.36 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0 ^-1.918 ^4.346 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0 ^-1.918 ^4.333 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}