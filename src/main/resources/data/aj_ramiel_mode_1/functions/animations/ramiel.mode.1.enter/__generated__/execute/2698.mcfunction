#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,89.019f,0f]
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,86.097f,0f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,82.395f,0f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,78.639f,0f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,74.835f,0f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,71.062f,0f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,67.17f,0f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,63.16f,0f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,59.192f,0f]
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-0.438 ^-6.391 ^0.008 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-0.43 ^-6.4 ^0.029 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-0.418 ^-6.412 ^0.056 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-0.406 ^-6.422 ^0.082 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-0.393 ^-6.431 ^0.106 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-0.384 ^-6.44 ^0.132 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-0.374 ^-6.447 ^0.157 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-0.362 ^-6.454 ^0.183 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-0.349 ^-6.46 ^0.208 ~ ~
execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:763}
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:765}
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:766}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}