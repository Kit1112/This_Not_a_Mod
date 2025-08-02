#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^-1.918 ^1.523 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0 ^-1.918 ^1.5 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0 ^-1.918 ^1.477 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^-1.918 ^1.449 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0 ^-1.918 ^1.415 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-1.918 ^1.372 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-1.918 ^1.317 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0 ^-1.918 ^1.247 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0 ^-1.918 ^1.159 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:514}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:517}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:519}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:520}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:521}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:522}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:523}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:524}