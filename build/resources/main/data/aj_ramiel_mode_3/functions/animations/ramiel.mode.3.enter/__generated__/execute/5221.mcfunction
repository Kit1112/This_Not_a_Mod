#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,60f,0f]
execute if score #this.aj.anim aj.i matches 32 run tp @s ^-3.009 ^-1.918 ^1.737 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^-3.04 ^-1.918 ^1.755 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^-3.073 ^-1.918 ^1.774 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-3.118 ^-1.918 ^1.8 ~ ~
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-3.388 ^-1.918 ^1.956 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-3.651 ^-1.918 ^2.108 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-3.889 ^-1.918 ^2.245 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-4.131 ^-1.918 ^2.385 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-4.369 ^-1.918 ^2.522 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-4.602 ^-1.918 ^2.657 ~ ~
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1816}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1815}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1813}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1812}
execute if score #this.aj.anim aj.i matches 37 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1811}