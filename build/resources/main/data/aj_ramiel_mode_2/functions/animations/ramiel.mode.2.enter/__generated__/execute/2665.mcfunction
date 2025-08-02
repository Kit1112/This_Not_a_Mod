#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-5.01 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-5.019 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-5.028 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-5.037 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-5.045 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-5.054 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-5.062 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1129}
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1136}