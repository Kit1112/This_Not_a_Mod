#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0 ^-1.918 ^1.043 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0 ^-1.918 ^0.999 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0 ^-1.918 ^0.956 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0 ^-1.918 ^0.911 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0 ^-1.918 ^0.869 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0 ^-1.918 ^0.825 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0 ^-1.918 ^0.781 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0 ^-1.918 ^0.738 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0 ^-1.918 ^0.695 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:542}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:543}
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:544}
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:545}
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:546}
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:547}
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:548}
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:549}
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:550}