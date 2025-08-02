#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-4.187f,0f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-0.142f,0f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,3.903f,0f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,7.948f,0f]
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,11.912f,0f]
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,16.038f,0f]
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,20.083f,0f]
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,24.128f,0f]
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,28.173f,0f]
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0 ^-2.667 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0 ^-2.574 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0 ^-2.488 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0 ^-2.408 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0 ^-2.335 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0 ^-2.265 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0 ^-2.202 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^-2.144 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^-2.091 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1028}
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1173}
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1026}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1175}
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1176}
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1177}
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1178}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1021}
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1180}