#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,11.003f,0f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,12.926f,0f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,14.724f,0f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,15f,0f]
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-0.122 ^2.592 ^0.629 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.143 ^2.598 ^0.625 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.163 ^2.606 ^0.62 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.166 ^2.617 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-0.166 ^2.63 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-0.166 ^2.644 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-0.166 ^2.66 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-0.166 ^2.677 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}