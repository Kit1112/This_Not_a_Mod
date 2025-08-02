#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-75.357f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-107.167f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-138.415f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-169.061f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,162.061f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,134.305f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,107.638f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,81.523f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0 ^-1.918 ^4.14 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0 ^-1.918 ^4.154 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0 ^-1.918 ^4.167 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0 ^-1.918 ^4.181 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0 ^-1.918 ^4.194 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0 ^-1.918 ^4.208 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0 ^-1.918 ^4.221 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0 ^-1.918 ^4.235 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}