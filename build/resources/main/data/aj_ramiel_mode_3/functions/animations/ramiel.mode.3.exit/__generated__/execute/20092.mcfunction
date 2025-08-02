#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-75f,0f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^6.556 ^-3.955 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^6.556 ^-3.919 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^6.556 ^-3.889 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^6.556 ^-3.858 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^6.556 ^-3.828 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^6.556 ^-3.797 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^6.556 ^-3.766 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^6.556 ^-3.736 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^6.556 ^-3.706 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^6.556 ^-3.676 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4587}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4611}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4585}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4584}
execute if score #this.aj.anim aj.i matches 15 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4583}
execute if score #this.aj.anim aj.i matches 16 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4582}
execute if score #this.aj.anim aj.i matches 17 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4581}
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4617}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4579}
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4578}