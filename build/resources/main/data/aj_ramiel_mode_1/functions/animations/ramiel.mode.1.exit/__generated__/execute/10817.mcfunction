#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75.034f,0f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,76.852f,0f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,78.799f,0f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,80.748f,0f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,82.893f,0f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.011 ^-5.605 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.011 ^-5.59 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.011 ^-5.575 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.011 ^-5.562 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.011 ^-5.551 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.012 ^-5.543 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.012 ^-5.536 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.013 ^-5.53 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.014 ^-5.525 ^-0.017 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}