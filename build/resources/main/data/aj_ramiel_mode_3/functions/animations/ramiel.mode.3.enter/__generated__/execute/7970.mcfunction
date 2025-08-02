#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-112.208f,20.705f,130.893f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-1.343 ^-1.918 ^-2.327 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-1.347 ^-1.918 ^-2.334 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-1.351 ^-1.918 ^-2.341 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-1.355 ^-1.918 ^-2.347 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-1.358 ^-1.918 ^-2.353 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-1.361 ^-1.918 ^-2.358 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-1.364 ^-1.918 ^-2.363 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-1.367 ^-1.918 ^-2.367 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-1.369 ^-1.918 ^-2.371 ~ ~
execute if score #this.aj.anim aj.i matches 30..31 run tp @s ^-1.371 ^-1.918 ^-2.375 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3419}