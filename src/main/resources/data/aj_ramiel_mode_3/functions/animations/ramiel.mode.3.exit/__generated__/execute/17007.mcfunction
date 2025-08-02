#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,60f,180f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-6.128 ^-1.918 ^-3.538 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-6.054 ^-1.918 ^-3.495 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-5.98 ^-1.918 ^-3.453 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-5.877 ^-1.918 ^-3.393 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-5.774 ^-1.918 ^-3.334 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-5.672 ^-1.918 ^-3.275 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-5.566 ^-1.918 ^-3.214 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-5.464 ^-1.918 ^-3.155 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-5.357 ^-1.918 ^-3.093 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-5.253 ^-1.918 ^-3.033 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2681}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2680}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2677}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2678}