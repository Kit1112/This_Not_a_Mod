#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [140.768f,37.761f,63.435f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-2.327 ^-1.918 ^1.343 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-2.334 ^-1.918 ^1.347 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-2.341 ^-1.918 ^1.351 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-2.347 ^-1.918 ^1.355 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-2.353 ^-1.918 ^1.358 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-2.358 ^-1.918 ^1.361 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-2.363 ^-1.918 ^1.364 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-2.367 ^-1.918 ^1.367 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-2.371 ^-1.918 ^1.369 ~ ~
execute if score #this.aj.anim aj.i matches 30..31 run tp @s ^-2.375 ^-1.918 ^1.371 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2156}