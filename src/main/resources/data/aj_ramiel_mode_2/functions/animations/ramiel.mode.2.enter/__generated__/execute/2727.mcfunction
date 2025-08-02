#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0 ^-2.506 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0 ^-2.715 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0 ^-2.858 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0 ^-2.914 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0 ^-2.944 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0 ^-2.953 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0 ^-2.95 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:638}