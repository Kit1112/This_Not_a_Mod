#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^7.571 ^-0.175 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^7.571 ^-0.208 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^7.571 ^-0.239 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^7.571 ^-0.271 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^7.571 ^-0.304 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^7.571 ^-0.336 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^7.571 ^-0.367 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^7.571 ^-0.399 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^7.571 ^-0.431 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^7.571 ^-0.463 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4834}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4833}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4832}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4880}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4830}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4829}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4828}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4827}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4826}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4825}