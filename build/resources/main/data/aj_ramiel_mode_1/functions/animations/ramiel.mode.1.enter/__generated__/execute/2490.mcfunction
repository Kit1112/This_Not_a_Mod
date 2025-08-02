#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-11.003f,0f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-12.926f,0f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-14.724f,0f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15f,0f]
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.1 ^-6.323 ^0.513 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.117 ^-6.33 ^0.51 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.133 ^-6.337 ^0.506 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.135 ^-6.348 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.135 ^-6.361 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.135 ^-6.375 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.135 ^-6.391 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.135 ^-6.408 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}