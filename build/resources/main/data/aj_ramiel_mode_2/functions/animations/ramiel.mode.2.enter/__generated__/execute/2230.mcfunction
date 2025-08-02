#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^-6.988 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^-6.996 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^-7.003 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^-7.011 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^-7.018 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^-7.025 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^-7.031 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^-7.038 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:932}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:939}