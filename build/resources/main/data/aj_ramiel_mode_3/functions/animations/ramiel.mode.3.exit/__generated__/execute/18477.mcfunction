#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,0f,180f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^0 ^-1.918 ^-7.076 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^0 ^-1.918 ^-6.991 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^0 ^-1.918 ^-6.905 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^0 ^-1.918 ^-6.786 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^0 ^-1.918 ^-6.668 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^0 ^-1.918 ^-6.55 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0 ^-1.918 ^-6.427 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0 ^-1.918 ^-6.309 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0 ^-1.918 ^-6.186 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0 ^-1.918 ^-6.066 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3523}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3522}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3519}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3520}