#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-90f,0f,135f]
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0 ^-1.918 ^-6.521 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0 ^-1.918 ^-6.288 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0 ^-1.918 ^-6.028 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0 ^-1.918 ^-5.764 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0 ^-1.918 ^-5.499 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0 ^-1.918 ^-5.235 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0 ^-1.918 ^-4.97 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0 ^-1.918 ^-4.706 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0 ^-1.918 ^-4.433 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0 ^-1.918 ^-4.159 ~ ~
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3856}
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3898}
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3899}
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3900}
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3901}
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3902}
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3903}
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3904}
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3905}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3906}