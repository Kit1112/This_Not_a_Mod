#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,0f,180f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0 ^-1.918 ^-3.363 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0 ^-1.918 ^-3.322 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^-1.918 ^-3.279 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^-1.918 ^-3.237 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0 ^-1.918 ^-3.194 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0 ^-1.918 ^-3.151 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0 ^-1.918 ^-3.108 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0 ^-1.918 ^-3.068 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0 ^-1.918 ^-3.029 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0 ^-1.918 ^-2.989 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3511}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3503}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3504}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3505}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3506}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3505}