#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,30f,180f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-1.513 ^-1.918 ^-2.621 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-1.532 ^-1.918 ^-2.654 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-1.552 ^-1.918 ^-2.688 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-1.574 ^-1.918 ^-2.726 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-1.596 ^-1.918 ^-2.764 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-1.617 ^-1.918 ^-2.801 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-1.639 ^-1.918 ^-2.839 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-1.66 ^-1.918 ^-2.875 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-1.68 ^-1.918 ^-2.91 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-1.7 ^-1.918 ^-2.945 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-1.719 ^-1.918 ^-2.977 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3085}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3084}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3083}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3082}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3090}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3080}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3092}