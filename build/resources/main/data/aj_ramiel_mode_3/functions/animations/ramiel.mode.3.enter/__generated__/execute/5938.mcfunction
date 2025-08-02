#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-3.026 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-3.065 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-3.103 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-3.147 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-3.192 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-3.234 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-3.279 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-3.32 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-3.36 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-3.4 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-3.438 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2243}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2242}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2241}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2240}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2248}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2238}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2250}