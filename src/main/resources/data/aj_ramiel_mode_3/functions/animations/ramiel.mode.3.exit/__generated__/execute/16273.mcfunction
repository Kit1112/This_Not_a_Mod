#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-7.076 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-6.991 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-6.905 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-6.786 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-6.668 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-6.55 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-6.427 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-6.309 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-6.186 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-6.066 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2260}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2259}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2256}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2257}