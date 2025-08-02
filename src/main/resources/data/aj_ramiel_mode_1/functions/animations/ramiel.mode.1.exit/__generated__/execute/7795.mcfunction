#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,15f,0f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.166 ^3.09 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.166 ^3.063 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.166 ^3.037 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-0.166 ^3.009 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-0.166 ^2.983 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-0.166 ^2.956 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-0.166 ^2.93 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-0.166 ^2.904 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-0.166 ^2.878 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}