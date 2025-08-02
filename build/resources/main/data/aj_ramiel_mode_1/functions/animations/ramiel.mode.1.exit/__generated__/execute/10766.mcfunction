#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0.011 ^-6.41 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0.011 ^-6.398 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0.011 ^-6.385 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0.011 ^-6.37 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0.011 ^-6.355 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.011 ^-6.338 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.011 ^-6.319 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.011 ^-6.299 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0.011 ^-6.279 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}