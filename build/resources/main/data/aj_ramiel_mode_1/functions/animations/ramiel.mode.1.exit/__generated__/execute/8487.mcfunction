#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-15f,-180f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-14.966f,-180f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-13.148f,-180f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-11.201f,-180f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-9.252f,-180f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-7.107f,-180f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.129 ^2.568 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.129 ^2.553 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.129 ^2.538 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.129 ^2.525 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.129 ^2.514 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.114 ^2.506 ^-0.487 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.097 ^2.499 ^-0.49 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.08 ^2.493 ^-0.493 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.062 ^2.488 ^-0.496 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}