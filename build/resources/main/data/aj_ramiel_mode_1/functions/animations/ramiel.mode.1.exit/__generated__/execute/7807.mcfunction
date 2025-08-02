#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,15f,0f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-0.166 ^2.853 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-0.166 ^2.828 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-0.166 ^2.805 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-0.166 ^2.782 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-0.166 ^2.759 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^-0.166 ^2.738 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^-0.166 ^2.717 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^-0.166 ^2.698 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-0.166 ^2.679 ^0.619 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:74}