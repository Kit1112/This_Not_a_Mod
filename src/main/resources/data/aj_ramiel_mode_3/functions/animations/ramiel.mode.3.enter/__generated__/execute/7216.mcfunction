#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-140.768f,37.761f,116.565f]
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-2.173 ^-1.918 ^-1.255 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-2.212 ^-1.918 ^-1.277 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-2.24 ^-1.918 ^-1.293 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-2.261 ^-1.918 ^-1.306 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-2.273 ^-1.918 ^-1.312 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-2.284 ^-1.918 ^-1.318 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-2.293 ^-1.918 ^-1.324 ~ ~
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-2.302 ^-1.918 ^-1.329 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-2.312 ^-1.918 ^-1.335 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-2.319 ^-1.918 ^-1.339 ~ ~
execute if score #this.aj.anim aj.i matches 11 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2994}
execute if score #this.aj.anim aj.i matches 12 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2996}
execute if score #this.aj.anim aj.i matches 13 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2997}
execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2998}