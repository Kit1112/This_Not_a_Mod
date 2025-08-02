#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75f,-180f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.562 ^3.032 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.562 ^3.006 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.562 ^2.979 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-0.562 ^2.951 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-0.562 ^2.925 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-0.562 ^2.898 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-0.562 ^2.872 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-0.562 ^2.846 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-0.562 ^2.82 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}