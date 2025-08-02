#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-6.556 ^-0.814 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-6.556 ^-0.846 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-6.556 ^-0.878 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-6.556 ^-0.909 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-6.556 ^-0.942 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-6.556 ^-0.967 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-6.556 ^-0.999 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 48..50 run tp @s ^-6.556 ^-1.004 ^-3.785 ~ ~
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2791}
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2708}
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2707}
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2706}
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2705}
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2796}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2704}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2702}