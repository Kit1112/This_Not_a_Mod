#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^3.152 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^3.16 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^3.167 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^3.175 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^3.182 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^3.189 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^3.195 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^3.202 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1000}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1007}