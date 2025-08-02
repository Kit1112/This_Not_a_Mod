#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-15.357f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-47.167f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-78.415f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-109.061f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-137.939f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-165.695f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,167.638f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,141.523f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0 ^-1.918 ^5.234 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0 ^-1.918 ^5.222 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0 ^-1.918 ^5.209 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0 ^-1.918 ^5.195 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0 ^-1.918 ^5.182 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0 ^-1.918 ^5.169 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0 ^-1.918 ^5.156 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0 ^-1.918 ^5.142 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1528}