#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-7.775f,-90f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,37.054f,-90f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,85.668f,-90f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,41.961f,90f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-11.913f,90f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-66.951f,90f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-54.794f,-90f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^5.395 ^-1.955 ^0.048 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^5.406 ^-1.978 ^0.008 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^5.416 ^-1.964 ^-0.04 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^5.427 ^-1.915 ^-0.061 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^5.438 ^-1.867 ^-0.033 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^5.448 ^-1.861 ^0.023 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^5.459 ^-1.908 ^0.061 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1484}
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1488}