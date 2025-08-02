#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-30f,180f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^2.399 ^-1.918 ^-4.155 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^2.259 ^-1.918 ^-3.912 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^2.124 ^-1.918 ^-3.679 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^1.972 ^-1.918 ^-3.415 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^1.81 ^-1.918 ^-3.134 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^1.776 ^-1.918 ^-3.075 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^1.757 ^-1.918 ^-3.043 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^1.738 ^-1.918 ^-3.011 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^1.72 ^-1.918 ^-2.979 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^1.702 ^-1.918 ^-2.948 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3916}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3917}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3918}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3919}
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3921}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3934}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3922}