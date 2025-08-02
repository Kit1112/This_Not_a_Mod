#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.003f,0.003f,-18.701f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.004f,0.001f,17.166f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.003f,-0.002f,56.657f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90.002f,-0.004f,92.975f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,-0.004f,136.163f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.996f,-0.002f,-177.725f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.996f,0.002f,-128.37f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [89.999f,0.004f,-75.96f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0 ^-1.918 ^4.118 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0 ^-1.918 ^4.105 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0 ^-1.918 ^4.09 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0 ^-1.918 ^4.078 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^0 ^-1.918 ^4.064 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^0 ^-1.918 ^4.051 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^0 ^-1.918 ^4.037 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^0 ^-1.918 ^4.024 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}