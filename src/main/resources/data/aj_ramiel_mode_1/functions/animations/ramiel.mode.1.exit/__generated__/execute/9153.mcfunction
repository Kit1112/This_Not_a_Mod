#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,14.966f,0f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,13.148f,0f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,11.201f,0f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,9.252f,0f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,7.107f,0f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-0.011 ^1.769 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-0.011 ^1.754 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-0.011 ^1.739 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-0.011 ^1.726 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-0.011 ^1.715 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-0.012 ^1.707 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-0.012 ^1.7 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-0.013 ^1.694 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-0.014 ^1.689 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}