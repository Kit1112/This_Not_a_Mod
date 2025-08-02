#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [112.208f,20.705f,49.107f]
execute if score #this.aj.anim aj.i matches 32..34 run tp @s ^-1.371 ^-1.918 ^2.375 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-1.379 ^-1.918 ^2.389 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-1.516 ^-1.918 ^2.627 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-1.651 ^-1.918 ^2.86 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-1.788 ^-1.918 ^3.097 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-1.928 ^-1.918 ^3.34 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-2.066 ^-1.918 ^3.578 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-2.2 ^-1.918 ^3.811 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1735}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1736}
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1737}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1738}
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1739}
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1740}
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1741}
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1742}