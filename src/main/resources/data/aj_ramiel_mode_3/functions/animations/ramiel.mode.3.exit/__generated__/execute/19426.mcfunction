#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-75f,180f]
execute if score #this.aj.anim aj.i matches 41 run tp @s ^3.785 ^-3.037 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^3.785 ^-3.006 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^3.785 ^-2.976 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^3.785 ^-2.946 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^3.785 ^-2.915 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^3.785 ^-2.891 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^3.785 ^-2.86 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^3.785 ^-2.805 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^3.785 ^-2.748 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^3.785 ^-2.688 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4218}
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4135}
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4134}
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4133}
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4132}
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4223}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4131}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4129}
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4226}
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4227}