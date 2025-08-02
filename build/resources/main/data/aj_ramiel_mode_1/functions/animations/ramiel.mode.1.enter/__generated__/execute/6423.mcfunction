#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-20.73f,-180f]
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-22.26f,-180f]
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-23.76f,-180f]
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-25.26f,-180f]
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-26.76f,-180f]
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-28.26f,-180f]
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-29.76f,-180f]
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-31.23f,-180f]
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-32.76f,-180f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^0.979 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^0.995 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0 ^1.01 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0 ^1.026 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0 ^1.04 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0 ^1.055 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0 ^1.069 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0 ^1.082 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0 ^1.095 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2237}