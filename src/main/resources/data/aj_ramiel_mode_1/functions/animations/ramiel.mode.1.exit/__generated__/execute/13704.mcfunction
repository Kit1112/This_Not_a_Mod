#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-31.77f,-180f]
execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-30.24f,-180f]
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-28.77f,-180f]
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-26.97f,-180f]
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-25.47f,-180f]
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-23.94f,-180f]
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-22.44f,-180f]
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-20.94f,-180f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-19.44f,-180f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0 ^1.087 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0 ^1.073 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0 ^1.06 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0 ^1.042 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0 ^1.028 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0 ^1.012 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0 ^0.997 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0 ^0.981 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0 ^0.965 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2237}