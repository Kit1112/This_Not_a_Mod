#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0 ^-6.853 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^-6.863 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^-6.872 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0 ^-6.881 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0 ^-6.891 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0 ^-6.9 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0 ^-6.91 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0 ^-6.919 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:918}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:925}