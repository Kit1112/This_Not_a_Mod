#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75.555f,-180f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,71.557f,180f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,67.591f,-180f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,63.662f,-180f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,59.849f,-180f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,56f,-180f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,52.198f,-180f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,48.371f,-180f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,44.745f,-180f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.484 ^2.535 ^-0.125 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-0.474 ^2.531 ^-0.158 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.462 ^2.527 ^-0.19 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.448 ^2.522 ^-0.222 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.432 ^2.518 ^-0.251 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.414 ^2.513 ^-0.279 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.395 ^2.509 ^-0.306 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.373 ^2.505 ^-0.332 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.352 ^2.501 ^-0.355 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}