#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,78.997f,0f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,77.074f,0f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75.276f,0f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.012 ^-5.535 ^-0.018 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.012 ^-5.542 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.011 ^-5.549 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.011 ^-5.56 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.011 ^-5.573 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.011 ^-5.588 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.011 ^-5.603 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.011 ^-5.62 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}