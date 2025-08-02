#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-112.208f,20.705f,130.893f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-1.255 ^-1.918 ^-2.173 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-1.277 ^-1.918 ^-2.212 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-1.293 ^-1.918 ^-2.24 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-1.306 ^-1.918 ^-2.261 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-1.312 ^-1.918 ^-2.273 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-1.318 ^-1.918 ^-2.284 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-1.324 ^-1.918 ^-2.293 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-1.329 ^-1.918 ^-2.302 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-1.335 ^-1.918 ^-2.312 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-1.339 ^-1.918 ^-2.319 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3415}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3417}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3418}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3419}