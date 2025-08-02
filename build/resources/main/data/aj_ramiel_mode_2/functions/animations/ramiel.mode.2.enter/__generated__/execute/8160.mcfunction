#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-7.574f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,62.447f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,129.683f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-161.942f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-93.996f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,-26.677f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,39.822f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.015 ^-1.938 ^-2.922 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.024 ^-1.91 ^-2.928 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.002 ^-1.893 ^-2.933 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.022 ^-1.907 ^-2.938 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.019 ^-1.935 ^-2.943 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-0.008 ^-1.942 ^-2.948 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-0.025 ^-1.92 ^-2.953 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:4090}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:4091}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:4094}