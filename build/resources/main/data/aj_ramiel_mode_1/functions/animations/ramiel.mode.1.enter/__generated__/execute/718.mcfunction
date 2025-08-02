#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,55.192f,-180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,51.163f,-180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,47.108f,180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,43.032f,180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,38.937f,180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,34.826f,180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,30.622f,180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,26.574f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,22.438f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.43 ^2.571 ^-0.299 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.407 ^2.575 ^-0.328 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.383 ^2.578 ^-0.356 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.357 ^2.581 ^-0.382 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.329 ^2.583 ^-0.407 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.299 ^2.584 ^-0.429 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.266 ^2.584 ^-0.45 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.234 ^2.584 ^-0.468 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.2 ^2.584 ^-0.484 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}