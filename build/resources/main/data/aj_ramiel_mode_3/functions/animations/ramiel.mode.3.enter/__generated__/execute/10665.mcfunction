#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45f,0f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^2.541 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^2.811 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^3.07 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^3.335 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^3.547 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^3.816 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^4.086 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^4.34 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^4.412 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^4.448 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^4.483 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4943}
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4944}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4945}