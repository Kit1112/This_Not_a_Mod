#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-86.495f,0f]
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-87.983f,0f]
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-89.406f,0f]
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-89.207f,-180f]
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-87.857f,-180f]
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-86.547f,-180f]
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-85.277f,-180f]
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-84.074f,-180f]
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-82.865f,-180f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^-2.971 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^-2.977 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0 ^-2.983 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0 ^-2.988 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0 ^-2.994 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0 ^-2.999 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0 ^-3.004 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0 ^-3.009 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0 ^-3.014 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2641}