#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-45f,180f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0 ^-1.918 ^-2.541 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0 ^-1.918 ^-2.811 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0 ^-1.918 ^-3.07 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^0 ^-1.918 ^-3.335 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^0 ^-1.918 ^-3.547 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^0 ^-1.918 ^-3.816 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^0 ^-1.918 ^-4.086 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^0 ^-1.918 ^-4.34 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^0 ^-1.918 ^-4.412 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^0 ^-1.918 ^-4.448 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^0 ^-1.918 ^-4.483 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3680}
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3681}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3682}