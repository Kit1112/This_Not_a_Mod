#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,15f,0f]
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-0.166 ^2.9 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-0.166 ^2.926 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-0.166 ^2.953 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-0.166 ^2.979 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-0.166 ^3.006 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-0.166 ^3.033 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-0.166 ^3.06 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-0.166 ^3.087 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-0.166 ^3.113 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}