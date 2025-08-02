#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-75f,0f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0.505 ^2.784 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0.505 ^2.759 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0.505 ^2.735 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0.505 ^2.712 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0.505 ^2.689 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0.505 ^2.668 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0.505 ^2.648 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0.505 ^2.628 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.505 ^2.609 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}