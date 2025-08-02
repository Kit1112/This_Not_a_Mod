#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,19.532f,-180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,22.674f,-180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,26.024f,-180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,29.384f,-180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,32.815f,-180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,36.243f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,39.876f,-180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,43.427f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,47.107f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.167 ^2.478 ^-0.471 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.193 ^2.48 ^-0.461 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.219 ^2.482 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.245 ^2.485 ^-0.435 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.271 ^2.488 ^-0.42 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.295 ^2.492 ^-0.403 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.32 ^2.495 ^-0.383 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.343 ^2.499 ^-0.363 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.366 ^2.503 ^-0.34 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}