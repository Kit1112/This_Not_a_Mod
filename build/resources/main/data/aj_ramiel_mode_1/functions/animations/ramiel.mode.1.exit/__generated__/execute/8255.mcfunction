#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,33.591f,-180f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,37.705f,-180f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,41.723f,180f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,45.806f,-180f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,49.868f,180f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,53.905f,180f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,57.835f,-180f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,61.814f,180f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,65.837f,-180f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.289 ^2.584 ^-0.436 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.32 ^2.583 ^-0.414 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.348 ^2.582 ^-0.39 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.375 ^2.579 ^-0.365 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.4 ^2.576 ^-0.337 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.423 ^2.572 ^-0.308 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.443 ^2.568 ^-0.278 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.461 ^2.562 ^-0.247 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.477 ^2.555 ^-0.214 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}