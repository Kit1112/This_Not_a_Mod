#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-23.4f,-180f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-19.355f,-180f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-15.391f,-180f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-11.265f,-180f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-7.301f,-180f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-3.094f,-180f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,0.87f,-180f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,4.834f,-180f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,8.96f,-180f]
execute if score #this.aj.anim aj.i matches 90 run tp @s ^0 ^1.32 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0 ^1.308 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^1.296 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^1.282 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0 ^1.269 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0 ^1.254 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0 ^1.239 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0 ^1.223 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0 ^1.206 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1750}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1746}
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1743}