#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,11.003f,0f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,12.926f,0f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,14.724f,0f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-0.012 ^1.699 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.012 ^1.706 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.011 ^1.713 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.011 ^1.724 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-0.011 ^1.737 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-0.011 ^1.752 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-0.011 ^1.767 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-0.011 ^1.784 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}