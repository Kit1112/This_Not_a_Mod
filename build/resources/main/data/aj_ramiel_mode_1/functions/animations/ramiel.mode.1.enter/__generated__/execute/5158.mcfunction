#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-34.26f,0f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-35.76f,0f]
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-37.23f,0f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-38.76f,0f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-40.26f,0f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-41.76f,0f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-43.23f,0f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-44.76f,0f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^-4.485 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^-4.495 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0 ^-4.505 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0 ^-4.514 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0 ^-4.522 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0 ^-4.529 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0 ^-4.536 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0 ^-4.542 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1669}