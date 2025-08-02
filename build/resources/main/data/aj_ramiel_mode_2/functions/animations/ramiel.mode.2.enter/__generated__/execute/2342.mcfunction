#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0 ^2.95 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0 ^2.959 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0 ^2.969 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0 ^2.979 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0 ^2.988 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^0 ^2.998 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^0 ^3.007 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:980}
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:986}