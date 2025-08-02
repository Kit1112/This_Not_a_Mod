#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,75f,180f]
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-6.556 ^-2.32 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-6.556 ^-2.379 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-6.556 ^-2.438 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-6.556 ^-2.496 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-6.556 ^-2.553 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-6.556 ^-2.613 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-6.556 ^-2.672 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-6.556 ^-2.73 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-6.556 ^-2.788 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-6.556 ^-2.847 ^3.785 ~ ~
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2016}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2017}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2018}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2019}
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2020}
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2021}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2022}
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2023}
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2024}
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2025}