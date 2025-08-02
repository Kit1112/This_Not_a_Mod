#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,13.004f,-180f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,17.049f,-180f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,21.013f,-180f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,25.139f,-180f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,29.103f,-180f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,33.229f,-180f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,37.274f,-180f]
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,41.319f,-180f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,45.364f,-180f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0 ^1.189 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0 ^1.171 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0 ^1.152 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0 ^1.132 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0 ^1.041 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0 ^0.91 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0 ^0.761 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^0.596 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^0.419 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1728}