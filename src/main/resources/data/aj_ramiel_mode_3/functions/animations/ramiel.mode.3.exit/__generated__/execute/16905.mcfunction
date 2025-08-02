#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-6.556 ^-0.495 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^-6.556 ^-0.526 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^-6.556 ^-0.558 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^-6.556 ^-0.59 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-6.556 ^-0.624 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-6.556 ^-0.654 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-6.556 ^-0.686 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-6.556 ^-0.719 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-6.556 ^-0.75 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-6.556 ^-0.782 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2719}
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2718}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2717}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2716}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2715}
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2714}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2713}
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2712}
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2711}
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2710}