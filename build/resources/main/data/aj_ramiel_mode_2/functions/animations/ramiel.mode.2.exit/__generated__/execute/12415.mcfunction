#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^-3.909 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0 ^-3.87 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0 ^-3.826 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^-3.774 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0 ^-3.712 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-3.639 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-3.553 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0 ^-3.453 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0 ^-3.334 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:644}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:646}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:647}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:648}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:649}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:650}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:651}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:652}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:653}