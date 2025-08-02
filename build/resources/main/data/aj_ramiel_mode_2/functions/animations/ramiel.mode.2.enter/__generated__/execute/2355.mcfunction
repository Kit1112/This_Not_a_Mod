#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0 ^3.017 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^3.027 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^3.036 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0 ^3.045 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0 ^3.055 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0 ^3.064 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0 ^3.074 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0 ^3.083 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:986}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:993}