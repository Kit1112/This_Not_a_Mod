#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-78.997f,0f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-77.074f,0f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-75.276f,0f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-75f,0f]
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.513 ^2.522 ^0.1 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.51 ^2.529 ^0.117 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.506 ^2.537 ^0.133 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.505 ^2.547 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.505 ^2.56 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.505 ^2.575 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.505 ^2.59 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.505 ^2.607 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}