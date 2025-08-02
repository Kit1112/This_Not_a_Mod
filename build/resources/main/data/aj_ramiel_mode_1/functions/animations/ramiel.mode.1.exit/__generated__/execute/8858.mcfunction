#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,70.468f,0f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,67.326f,0f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,63.976f,0f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,60.616f,0f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,57.185f,0f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,53.757f,0f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,50.124f,0f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,46.573f,0f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,42.893f,0f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.548 ^2.513 ^0.194 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.537 ^2.515 ^0.224 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.523 ^2.517 ^0.255 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.507 ^2.52 ^0.285 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.489 ^2.523 ^0.315 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.469 ^2.527 ^0.344 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.446 ^2.531 ^0.373 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.422 ^2.534 ^0.4 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.396 ^2.539 ^0.426 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}