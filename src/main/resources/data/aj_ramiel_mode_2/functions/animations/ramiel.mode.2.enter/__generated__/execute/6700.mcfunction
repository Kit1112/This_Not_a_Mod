#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-73.4f,90f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-9.158f,90f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,52.429f,90f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,65.111f,-90f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,6.866f,-90f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-50.59f,-90f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-74.147f,90f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-20.241f,90f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-4.183 ^-1.933 ^0.028 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-4.189 ^-1.899 ^0.026 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-4.195 ^-1.886 ^-0.004 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-4.202 ^-1.907 ^-0.03 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-4.207 ^-1.938 ^-0.025 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-4.213 ^-1.95 ^0.003 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-4.219 ^-1.934 ^0.028 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-4.224 ^-1.905 ^0.029 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2967}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2970}
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:2975}