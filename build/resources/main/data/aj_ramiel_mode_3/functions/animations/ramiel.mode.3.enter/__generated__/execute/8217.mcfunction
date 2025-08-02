#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,0f,180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0 ^-1.918 ^-6.393 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0 ^-1.918 ^-6.514 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0 ^-1.918 ^-6.634 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0 ^-1.918 ^-6.757 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0 ^-1.918 ^-6.872 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0 ^-1.918 ^-6.965 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0 ^-1.918 ^-7.05 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0 ^-1.918 ^-7.134 ~ ~
execute if score #this.aj.anim aj.i matches 71..72 run tp @s ^0 ^-1.918 ^-7.147 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3520}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3521}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3522}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3523}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3524}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3525}
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3526}