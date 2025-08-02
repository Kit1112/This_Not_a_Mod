#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-76.374f,-90f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-58.695f,-90f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-41.067f,-90f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-21.704f,-90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-0.007f,-90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,22.395f,-90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,47.408f,-90f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^5.532 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^5.541 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^5.549 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^5.558 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^5.567 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^5.576 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^5.586 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1666}