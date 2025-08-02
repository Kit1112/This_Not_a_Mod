#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,33.591f,0f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,37.705f,0f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,41.723f,0f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,45.806f,0f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,49.868f,0f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,53.905f,0f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,57.835f,0f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,61.814f,0f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,65.837f,0f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.225 ^-6.479 ^0.338 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.248 ^-6.478 ^0.321 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.27 ^-6.476 ^0.303 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.291 ^-6.474 ^0.283 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.31 ^-6.471 ^0.262 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.328 ^-6.467 ^0.239 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.344 ^-6.462 ^0.216 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.358 ^-6.457 ^0.192 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.37 ^-6.45 ^0.166 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}