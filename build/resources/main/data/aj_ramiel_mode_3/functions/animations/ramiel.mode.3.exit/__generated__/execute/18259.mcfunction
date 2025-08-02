#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-112.208f,20.705f,130.893f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-1.369 ^-1.918 ^-2.372 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-1.367 ^-1.918 ^-2.368 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^-1.364 ^-1.918 ^-2.363 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^-1.361 ^-1.918 ^-2.358 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^-1.358 ^-1.918 ^-2.353 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^-1.355 ^-1.918 ^-2.347 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^-1.352 ^-1.918 ^-2.341 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^-1.348 ^-1.918 ^-2.334 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^-1.344 ^-1.918 ^-2.327 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^-1.339 ^-1.918 ^-2.32 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3419}