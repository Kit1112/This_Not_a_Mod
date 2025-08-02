#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-75f,0f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0.505 ^3.021 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.505 ^2.994 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.505 ^2.967 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.505 ^2.94 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.505 ^2.913 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.505 ^2.886 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.505 ^2.86 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.505 ^2.834 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.505 ^2.808 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}