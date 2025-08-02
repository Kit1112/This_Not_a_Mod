#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75f,0f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75.034f,0f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,76.852f,0f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,78.799f,0f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,80.748f,0f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,82.893f,0f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-0.46 ^-6.44 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-0.46 ^-6.424 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-0.46 ^-6.41 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-0.46 ^-6.396 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-0.46 ^-6.385 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-0.464 ^-6.377 ^0.108 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-0.467 ^-6.37 ^0.093 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-0.47 ^-6.365 ^0.077 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-0.473 ^-6.36 ^0.059 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}