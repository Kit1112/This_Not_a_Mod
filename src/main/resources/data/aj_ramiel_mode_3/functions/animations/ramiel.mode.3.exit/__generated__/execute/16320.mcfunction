#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,90f,0f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-4.798 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-4.518 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-4.249 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-3.943 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-3.619 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^-3.551 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^-3.514 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^-3.477 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^-3.44 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^-3.404 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2232}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2233}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2234}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2235}
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2237}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2250}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2238}