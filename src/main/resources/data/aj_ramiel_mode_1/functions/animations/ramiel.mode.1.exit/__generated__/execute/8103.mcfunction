#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-75f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0.505 ^3.397 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0.505 ^3.385 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0.505 ^3.372 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0.505 ^3.358 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0.505 ^3.342 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.505 ^3.325 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.505 ^3.306 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.505 ^3.286 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0.505 ^3.266 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}