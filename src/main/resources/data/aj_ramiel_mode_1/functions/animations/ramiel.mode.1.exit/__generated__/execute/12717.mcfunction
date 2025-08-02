#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75.03f,-180f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,76.56f,-180f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,78.06f,-180f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,79.56f,-180f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,81.06f,-180f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,82.53f,-180f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,84.06f,-180f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,85.56f,-180f]
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,87.06f,-180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^2.207 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0 ^2.197 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0 ^2.187 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^2.175 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0 ^2.162 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^2.149 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^2.134 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0 ^2.118 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0 ^2.102 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1814}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1804}