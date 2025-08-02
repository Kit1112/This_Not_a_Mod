#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-45f,180f]
execute if score #this.aj.anim aj.i matches 94..96 run tp @s ^0 ^-1.918 ^-3.82 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^0 ^-1.918 ^-6.97 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0 ^-1.968 ^-7.57 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0 ^-2.027 ^-7.57 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0 ^-2.086 ^-7.57 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0 ^-2.143 ^-7.57 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0 ^-2.204 ^-7.57 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0 ^-2.263 ^-7.57 ~ ~
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3680}
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3694}
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3695}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3696}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3697}
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3698}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3699}