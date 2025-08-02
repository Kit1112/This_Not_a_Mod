#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,6.21f,-180f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,4.74f,-180f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,3.24f,-180f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,1.74f,-180f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,0.27f,-180f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-1.23f,-180f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-2.76f,-180f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-4.26f,-180f]
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-5.76f,-180f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^0.713 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^0.724 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^0.736 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^0.749 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^0.762 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^0.776 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^0.791 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^0.806 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0 ^0.821 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2237}