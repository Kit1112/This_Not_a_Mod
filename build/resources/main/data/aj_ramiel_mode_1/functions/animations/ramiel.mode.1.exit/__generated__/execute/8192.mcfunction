#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-70.468f,180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-67.326f,180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-63.976f,-180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-60.616f,-180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-57.185f,180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-53.757f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-50.124f,180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-46.573f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-42.893f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0.493 ^2.501 ^-0.175 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0.483 ^2.503 ^-0.202 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0.47 ^2.506 ^-0.23 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0.456 ^2.508 ^-0.257 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0.44 ^2.512 ^-0.283 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0.422 ^2.515 ^-0.309 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0.401 ^2.519 ^-0.335 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0.38 ^2.523 ^-0.36 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0.356 ^2.527 ^-0.383 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}