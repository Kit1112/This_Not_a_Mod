#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,14.445f,-180f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,18.443f,-180f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,22.409f,-180f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,26.338f,-180f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,30.151f,-180f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,34f,-180f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,37.802f,-180f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,41.629f,-180f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,45.255f,-180f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.019 ^-5.571 ^0.011 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^0.02 ^-5.567 ^0.01 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^0.02 ^-5.563 ^0.008 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^0.021 ^-5.559 ^0.007 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^0.021 ^-5.554 ^0.006 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^0.022 ^-5.55 ^0.004 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^0.022 ^-5.546 ^0.003 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^0.022 ^-5.541 ^0.001 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^0.022 ^-5.537 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}