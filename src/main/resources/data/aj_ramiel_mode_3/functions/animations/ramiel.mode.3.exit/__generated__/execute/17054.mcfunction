#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-4.155 ^-1.918 ^-2.399 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-3.912 ^-1.918 ^-2.259 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-3.679 ^-1.918 ^-2.124 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-3.415 ^-1.918 ^-1.972 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-3.134 ^-1.918 ^-1.81 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^-3.075 ^-1.918 ^-1.776 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^-3.043 ^-1.918 ^-1.757 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^-3.011 ^-1.918 ^-1.738 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^-2.979 ^-1.918 ^-1.72 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^-2.948 ^-1.918 ^-1.702 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2653}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2654}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2655}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2656}
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2658}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2671}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2659}