#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0.011 ^-6.034 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.011 ^-6.007 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.011 ^-5.98 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.011 ^-5.953 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.011 ^-5.926 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.011 ^-5.899 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.011 ^-5.873 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.011 ^-5.847 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.011 ^-5.821 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}