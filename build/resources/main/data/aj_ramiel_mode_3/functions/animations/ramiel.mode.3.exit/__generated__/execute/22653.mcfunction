#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [67.792f,-20.705f,49.107f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^1.942 ^-1.918 ^3.364 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^1.802 ^-1.918 ^3.121 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^1.667 ^-1.918 ^2.888 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^1.53 ^-1.918 ^2.65 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^1.387 ^-1.918 ^2.403 ~ ~
execute if score #this.aj.anim aj.i matches 126..130 run tp @s ^1.371 ^-1.918 ^2.375 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:6012}
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:6013}
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:6014}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:6015}
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5946}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5945}