#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-6.556 ^-0.175 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-6.556 ^-0.208 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-6.556 ^-0.239 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-6.556 ^-0.271 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-6.556 ^-0.304 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-6.556 ^-0.336 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-6.556 ^-0.367 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-6.556 ^-0.399 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-6.556 ^-0.431 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-6.556 ^-0.463 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2729}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2728}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2727}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2775}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2725}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2724}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2723}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2722}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2721}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2720}