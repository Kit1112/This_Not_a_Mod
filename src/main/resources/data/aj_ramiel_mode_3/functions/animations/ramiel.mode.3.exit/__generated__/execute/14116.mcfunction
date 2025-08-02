#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0 ^-1.918 ^4.798 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0 ^-1.918 ^4.518 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0 ^-1.918 ^4.249 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0 ^-1.918 ^3.943 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0 ^-1.918 ^3.619 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0 ^-1.918 ^3.551 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0 ^-1.918 ^3.514 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0 ^-1.918 ^3.477 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0 ^-1.918 ^3.44 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0 ^-1.918 ^3.404 ~ ~
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:969}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:970}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:971}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:972}
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:974}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:987}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:975}