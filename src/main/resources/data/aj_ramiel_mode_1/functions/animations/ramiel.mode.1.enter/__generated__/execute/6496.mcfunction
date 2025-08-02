#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,51.97f,0f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,60.268f,0f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,68.566f,0f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,76.864f,0f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,85.162f,0f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,86.54f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,78.077f,-180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,69.945f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,61.647f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0 ^-1.849 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0 ^-1.766 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0 ^-1.684 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0 ^-1.601 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0 ^-1.519 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0 ^-1.436 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0 ^-1.352 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0 ^-1.271 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0 ^-1.189 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2304}
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2305}
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2306}
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2307}
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2308}