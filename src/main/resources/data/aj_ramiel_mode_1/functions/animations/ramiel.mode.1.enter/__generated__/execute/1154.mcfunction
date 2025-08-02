#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-11.003f,-180f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-12.926f,-180f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-14.724f,-180f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-15f,-180f]
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.095 ^2.499 ^-0.49 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.112 ^2.505 ^-0.487 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.127 ^2.513 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.129 ^2.524 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.129 ^2.537 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.129 ^2.551 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.129 ^2.566 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.129 ^2.584 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}