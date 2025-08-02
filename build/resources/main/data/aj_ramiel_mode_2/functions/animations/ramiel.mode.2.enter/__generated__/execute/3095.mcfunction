#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-0.588 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-0.797 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-0.94 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-0.996 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-1.026 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-1.035 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-1.032 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter4,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:766}