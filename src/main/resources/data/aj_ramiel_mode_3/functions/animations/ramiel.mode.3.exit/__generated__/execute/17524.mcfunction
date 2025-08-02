#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-140.768f,37.761f,116.565f]
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-2.372 ^-1.918 ^-1.369 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-2.368 ^-1.918 ^-1.367 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^-2.363 ^-1.918 ^-1.364 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^-2.358 ^-1.918 ^-1.361 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^-2.353 ^-1.918 ^-1.358 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^-2.347 ^-1.918 ^-1.355 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^-2.341 ^-1.918 ^-1.352 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^-2.334 ^-1.918 ^-1.348 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^-2.327 ^-1.918 ^-1.344 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^-2.32 ^-1.918 ^-1.339 ~ ~
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2998}