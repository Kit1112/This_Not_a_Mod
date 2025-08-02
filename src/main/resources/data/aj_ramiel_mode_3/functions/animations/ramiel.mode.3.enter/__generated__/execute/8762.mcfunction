#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,135f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^0 ^-1.918 ^-6.65 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0 ^-1.918 ^-6.686 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0 ^-1.918 ^-6.723 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0 ^-1.918 ^-6.756 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0 ^-1.918 ^-6.791 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0 ^-1.918 ^-6.827 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0 ^-1.918 ^-6.862 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0 ^-1.918 ^-6.896 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0 ^-1.918 ^-6.931 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0 ^-1.918 ^-6.967 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3859}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3861}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3863}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3864}