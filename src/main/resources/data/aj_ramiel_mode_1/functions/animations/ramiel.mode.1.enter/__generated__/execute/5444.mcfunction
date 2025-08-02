#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,53.79f,0f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,55.26f,0f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,56.76f,0f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,58.26f,0f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,59.73f,0f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,61.23f,0f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,62.76f,0f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,64.26f,0f]
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,65.76f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0 ^1.59 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0 ^1.605 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0 ^1.621 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0 ^1.638 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0 ^1.656 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^1.674 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^1.694 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^1.713 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0 ^1.733 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1797}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1804}