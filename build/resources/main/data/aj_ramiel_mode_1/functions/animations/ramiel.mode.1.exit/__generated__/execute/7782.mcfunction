#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,15f,0f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^-0.166 ^3.319 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^-0.166 ^3.296 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.166 ^3.273 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.166 ^3.245 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.166 ^3.22 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.166 ^3.194 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-0.166 ^3.169 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.166 ^3.143 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.166 ^3.116 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}