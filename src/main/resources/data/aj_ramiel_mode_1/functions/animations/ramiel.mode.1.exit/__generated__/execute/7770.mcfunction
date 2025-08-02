#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,15f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-0.166 ^3.467 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-0.166 ^3.455 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-0.166 ^3.442 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-0.166 ^3.427 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-0.166 ^3.411 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-0.166 ^3.394 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^-0.166 ^3.376 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^-0.166 ^3.356 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^-0.166 ^3.335 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}