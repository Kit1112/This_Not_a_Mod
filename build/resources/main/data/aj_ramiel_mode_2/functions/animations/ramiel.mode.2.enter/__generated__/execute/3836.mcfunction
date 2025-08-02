#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,29.018f,90f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,76.528f,90f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,58.939f,-90f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15.991f,-90f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-21.141f,-90f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-55.498f,-90f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-85.517f,-90f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-5.681 ^-1.856 ^0.018 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-5.688 ^-1.863 ^-0.034 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-5.694 ^-1.903 ^-0.062 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-5.7 ^-1.949 ^-0.056 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-5.705 ^-1.977 ^-0.026 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-5.71 ^-1.981 ^0.012 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-5.714 ^-1.967 ^0.042 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1221}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s[tag=aj.state.mode_2] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with redstone{CustomModelData:1228}