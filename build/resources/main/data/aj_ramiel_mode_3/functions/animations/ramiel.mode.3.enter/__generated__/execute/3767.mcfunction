#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0 ^-1.918 ^5.588 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0 ^-1.918 ^5.858 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0 ^-1.918 ^6.117 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0 ^-1.918 ^6.381 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0 ^-1.918 ^6.593 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0 ^-1.918 ^5.27 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0 ^-1.918 ^5.281 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0 ^-1.918 ^5.535 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0 ^-1.918 ^5.607 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0 ^-1.918 ^5.642 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0 ^-1.918 ^5.678 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:969}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:993}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:994}