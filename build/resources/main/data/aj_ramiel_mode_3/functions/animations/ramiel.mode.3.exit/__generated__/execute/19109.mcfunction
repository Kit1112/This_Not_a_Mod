#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-30f,180f]
execute if score #this.aj.anim aj.i matches 31 run tp @s ^3.785 ^-0.495 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^3.785 ^-0.526 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^3.785 ^-0.558 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^3.785 ^-0.59 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^3.785 ^-0.624 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^3.785 ^-0.654 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^3.785 ^-0.686 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^3.785 ^-0.719 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^3.785 ^-0.75 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^3.785 ^-0.782 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3982}
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3981}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3980}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3979}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3978}
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3977}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3976}
execute if score #this.aj.anim aj.i matches 38 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3975}
execute if score #this.aj.anim aj.i matches 39 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3974}
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3973}