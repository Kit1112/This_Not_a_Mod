#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,50.841f,-180f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,54.626f,-180f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,58.535f,-180f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,62.412f,-180f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,66.33f,-180f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,70.284f,-180f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,74.272f,-180f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,78.29f,-180f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,82.335f,-180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-0.387 ^2.508 ^-0.316 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-0.407 ^2.512 ^-0.289 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-0.426 ^2.516 ^-0.261 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-0.443 ^2.521 ^-0.231 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-0.458 ^2.525 ^-0.201 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-0.47 ^2.529 ^-0.169 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.481 ^2.534 ^-0.135 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.489 ^2.538 ^-0.101 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.495 ^2.542 ^-0.067 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}