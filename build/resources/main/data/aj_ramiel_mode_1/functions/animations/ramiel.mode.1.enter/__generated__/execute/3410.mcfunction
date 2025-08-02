#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-18.383f,-180f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-14.165f,-180f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-10.035f,-180f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-5.914f,-180f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,-1.886f,-180f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,2.29f,-180f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,6.284f,-180f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,10.418f,-180f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.01 ^-5.595 ^0.02 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.011 ^-5.594 ^0.019 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.013 ^-5.591 ^0.018 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.014 ^-5.589 ^0.017 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.015 ^-5.586 ^0.016 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0.016 ^-5.583 ^0.015 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0.017 ^-5.579 ^0.014 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0.018 ^-5.575 ^0.013 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}