#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-5.07 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-5.078 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-5.085 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-5.093 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-5.1 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-5.107 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-5.113 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-5.12 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1136}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1143}