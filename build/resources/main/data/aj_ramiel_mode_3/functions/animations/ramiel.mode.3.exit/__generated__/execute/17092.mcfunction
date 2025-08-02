#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^-2.554 ^-1.918 ^-1.475 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^-2.519 ^-1.918 ^-1.454 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^-2.484 ^-1.918 ^-1.434 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^-2.447 ^-1.918 ^-1.413 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^-2.41 ^-1.918 ^-1.391 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^-2.372 ^-1.918 ^-1.37 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^-2.323 ^-1.918 ^-1.341 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^-2.271 ^-1.918 ^-1.311 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^-2.213 ^-1.918 ^-1.277 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^-2.153 ^-1.918 ^-1.243 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2662}
execute if score #this.aj.anim aj.i matches 142 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2661}
execute if score #this.aj.anim aj.i matches 143 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2660}
execute if score #this.aj.anim aj.i matches 144 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2659}
execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2671}
execute if score #this.aj.anim aj.i matches 146 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2657}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2656}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2655}
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2654}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2653}