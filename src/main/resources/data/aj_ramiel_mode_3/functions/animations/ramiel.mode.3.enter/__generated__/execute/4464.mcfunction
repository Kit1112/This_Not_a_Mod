#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,30f,0f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-1.513 ^-1.918 ^2.621 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-1.532 ^-1.918 ^2.654 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-1.552 ^-1.918 ^2.688 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-1.574 ^-1.918 ^2.726 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-1.596 ^-1.918 ^2.764 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-1.617 ^-1.918 ^2.801 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-1.639 ^-1.918 ^2.839 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-1.66 ^-1.918 ^2.875 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-1.68 ^-1.918 ^2.91 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-1.7 ^-1.918 ^2.945 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-1.719 ^-1.918 ^2.977 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1401}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1400}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1399}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1398}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1406}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1396}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1408}