#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,7.574f,90f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-62.447f,90f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-50.317f,-90f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,18.058f,-90f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,86.004f,-90f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,26.677f,90f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-39.822f,90f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^5.553 ^-1.88 ^-0.05 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^5.563 ^-1.858 ^0.019 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^5.572 ^-1.912 ^0.063 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^5.582 ^-1.974 ^0.029 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^5.592 ^-1.966 ^-0.041 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^5.601 ^-1.898 ^-0.06 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^5.61 ^-1.855 ^-0.006 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1500}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1504}