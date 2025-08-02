#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,45f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0 ^-1.918 ^3.884 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0 ^-1.918 ^3.604 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0 ^-1.918 ^3.335 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^-1.918 ^3.06 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^-1.918 ^2.775 ~ ~
execute if score #this.aj.anim aj.i matches 126..130 run tp @s ^0 ^-1.918 ^2.742 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1381}
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1382}
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1383}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1384}
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1315}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1314}