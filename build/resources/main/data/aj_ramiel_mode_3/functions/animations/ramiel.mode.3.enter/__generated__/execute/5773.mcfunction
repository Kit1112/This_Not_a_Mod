#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [140.768f,37.761f,63.435f]
execute if score #this.aj.anim aj.i matches 32..34 run tp @s ^-2.375 ^-1.918 ^1.371 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-2.389 ^-1.918 ^1.379 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-2.627 ^-1.918 ^1.516 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-2.86 ^-1.918 ^1.651 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-3.097 ^-1.918 ^1.788 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-3.34 ^-1.918 ^1.928 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-3.578 ^-1.918 ^2.066 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-3.811 ^-1.918 ^2.2 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2156}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2157}
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2158}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2159}
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2160}
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2161}
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2162}
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2163}