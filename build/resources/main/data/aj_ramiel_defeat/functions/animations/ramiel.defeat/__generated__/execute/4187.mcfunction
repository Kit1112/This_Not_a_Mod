#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [114.037f,13.836f,122.368f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [114.397f,14.405f,120.688f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [114.785f,15.065f,118.656f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [115.129f,15.704f,116.588f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [115.43f,16.321f,114.485f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [115.683f,16.9f,112.39f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [115.903f,17.476f,110.174f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-5.616 ^-0.337 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-5.727 ^-0.415 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-5.915 ^-0.575 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-6.043 ^-0.801 ^-0.464 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-6.152 ^-1.04 ^-0.478 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-6.262 ^-1.291 ^-0.489 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-6.372 ^-1.553 ^-0.497 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-6.48 ^-1.818 ^-0.502 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-6.59 ^-2.103 ^-0.505 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:537}