#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75f,-180f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^-0.562 ^3.261 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^-0.562 ^3.238 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.562 ^3.215 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.562 ^3.187 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.562 ^3.162 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.562 ^3.137 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-0.562 ^3.111 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.562 ^3.085 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.562 ^3.058 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}