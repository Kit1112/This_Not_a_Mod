#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,30f,0f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-2.622 ^-1.918 ^4.541 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-2.28 ^-1.918 ^3.949 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-1.952 ^-1.918 ^3.38 ~ ~
execute if score #this.aj.anim aj.i matches 86..89 run tp @s ^-1.898 ^-1.918 ^3.287 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-3.483 ^-1.918 ^6.033 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-3.785 ^-1.869 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-3.785 ^-1.812 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-3.785 ^-1.756 ^6.556 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1390}
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1424}
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1425}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1426}