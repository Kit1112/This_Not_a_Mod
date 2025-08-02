#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-30f,180f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^3.538 ^-1.918 ^-6.128 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^3.495 ^-1.918 ^-6.054 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^3.453 ^-1.918 ^-5.98 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^3.393 ^-1.918 ^-5.877 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^3.334 ^-1.918 ^-5.774 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^3.275 ^-1.918 ^-5.672 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^3.214 ^-1.918 ^-5.566 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^3.155 ^-1.918 ^-5.464 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^3.093 ^-1.918 ^-5.357 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^3.033 ^-1.918 ^-5.253 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3944}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3943}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3940}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3941}