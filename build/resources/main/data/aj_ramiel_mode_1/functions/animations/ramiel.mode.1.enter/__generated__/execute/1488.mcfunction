#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,78.997f,180f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,77.074f,180f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75.276f,-180f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75f,-180f]
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-0.571 ^2.534 ^-0.111 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.567 ^2.541 ^-0.13 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.563 ^2.548 ^-0.148 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.562 ^2.559 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-0.562 ^2.572 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-0.562 ^2.586 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-0.562 ^2.602 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-0.562 ^2.619 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}