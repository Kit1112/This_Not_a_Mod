#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,15f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-0.166 ^2.695 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-0.166 ^2.714 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-0.166 ^2.735 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-0.166 ^2.756 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-0.166 ^2.778 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-0.166 ^2.801 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-0.166 ^2.825 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-0.166 ^2.85 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-0.166 ^2.875 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}