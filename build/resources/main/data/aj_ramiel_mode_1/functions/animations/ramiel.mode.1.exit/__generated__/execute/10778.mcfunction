#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0.011 ^-6.262 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0.011 ^-6.239 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0.011 ^-6.217 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0.011 ^-6.188 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0.011 ^-6.163 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0.011 ^-6.138 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0.011 ^-6.112 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0.011 ^-6.086 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0.011 ^-6.06 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}