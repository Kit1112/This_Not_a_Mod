#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [113.667f,16.193f,40.371f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [113.74f,15.484f,37.827f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [113.853f,14.741f,35.294f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [114.009f,13.964f,32.771f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [114.037f,13.836f,32.368f]
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-5.146 ^-5.617 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-5.219 ^-5.691 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-5.285 ^-5.757 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-5.343 ^-5.816 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 112..116 run tp @s ^-5.352 ^-5.824 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:533}