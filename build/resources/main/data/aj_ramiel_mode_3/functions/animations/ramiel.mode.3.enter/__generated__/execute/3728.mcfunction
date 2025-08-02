#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0 ^-1.918 ^3.026 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0 ^-1.918 ^3.065 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0 ^-1.918 ^3.103 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0 ^-1.918 ^3.147 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0 ^-1.918 ^3.192 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0 ^-1.918 ^3.234 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0 ^-1.918 ^3.279 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0 ^-1.918 ^3.32 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0 ^-1.918 ^3.36 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0 ^-1.918 ^3.4 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0 ^-1.918 ^3.438 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:980}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:979}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:978}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:977}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:985}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:975}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:987}