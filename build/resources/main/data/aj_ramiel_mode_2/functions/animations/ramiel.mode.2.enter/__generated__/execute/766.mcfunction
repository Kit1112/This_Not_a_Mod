#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.737f,17.779f,-92.631f]
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.818f,22.12f,-92.307f]
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.811f,26.328f,-91.97f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.716f,30.654f,-91.611f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.528f,35.098f,-91.236f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.253f,39.394f,-90.881f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.869f,43.802f,-90.537f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [145.355f,48.32f,-90.227f]
execute if score #this.aj.anim aj.i matches 16 run tp @s ^3.634 ^-1.46 ^-0.906 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^3.813 ^-1.448 ^-0.779 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^3.992 ^-1.458 ^-0.651 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^4.175 ^-1.493 ^-0.519 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^4.354 ^-1.55 ^-0.39 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^4.514 ^-1.624 ^-0.273 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^4.658 ^-1.715 ^-0.166 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^4.779 ^-1.819 ^-0.071 ~ ~
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:158}
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:159}
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:160}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:161}
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:162}
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:163}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:164}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:165}