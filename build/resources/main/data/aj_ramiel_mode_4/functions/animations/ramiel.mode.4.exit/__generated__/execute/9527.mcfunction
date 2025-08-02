#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [17.208f,62.618f,2.049f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [10.634f,55.888f,1.266f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [4.953f,50.071f,0.59f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.652f,45.668f,0.078f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.728 ^-0.692 ^-2.187 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.376 ^-0.773 ^-2.408 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.14 ^-0.912 ^-2.662 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-0.014 ^-1.082 ^-2.895 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0 ^-1.294 ^-3.082 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0 ^-1.487 ^-3.242 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0 ^-1.666 ^-3.391 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:840}