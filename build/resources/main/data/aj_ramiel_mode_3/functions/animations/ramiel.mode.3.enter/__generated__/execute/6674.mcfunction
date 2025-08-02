#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-2.621 ^-1.918 ^-1.513 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-2.654 ^-1.918 ^-1.532 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-2.688 ^-1.918 ^-1.552 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-2.726 ^-1.918 ^-1.574 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-2.764 ^-1.918 ^-1.596 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-2.801 ^-1.918 ^-1.617 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-2.839 ^-1.918 ^-1.639 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-2.875 ^-1.918 ^-1.66 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-2.91 ^-1.918 ^-1.68 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-2.945 ^-1.918 ^-1.7 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-2.977 ^-1.918 ^-1.719 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2664}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2663}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2662}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2661}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2669}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2659}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2671}