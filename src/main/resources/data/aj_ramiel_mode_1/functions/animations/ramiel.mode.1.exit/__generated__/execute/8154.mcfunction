#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-75f,0f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-75.034f,0f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-76.852f,0f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-78.799f,0f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-80.748f,0f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-82.893f,0f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.505 ^2.592 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.505 ^2.577 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.505 ^2.562 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.505 ^2.549 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.505 ^2.538 ^0.135 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.509 ^2.53 ^0.119 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.513 ^2.523 ^0.102 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.516 ^2.517 ^0.084 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.519 ^2.512 ^0.065 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}