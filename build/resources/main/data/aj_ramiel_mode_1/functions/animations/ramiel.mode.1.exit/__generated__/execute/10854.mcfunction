#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,70.468f,-180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,67.326f,-180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,63.976f,-180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,60.616f,-180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,57.185f,-180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,53.757f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,50.124f,-180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,46.573f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,42.893f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.02 ^-5.514 ^-0.009 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.02 ^-5.516 ^-0.008 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.021 ^-5.519 ^-0.007 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0.021 ^-5.521 ^-0.006 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0.022 ^-5.525 ^-0.005 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0.022 ^-5.528 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0.022 ^-5.532 ^-0.002 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.022 ^-5.536 ^-0.001 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.022 ^-5.54 ^0.001 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}