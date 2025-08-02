#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15f,0f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0.135 ^-7.05 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0.135 ^-7.027 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0.135 ^-7.005 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0.135 ^-6.976 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0.135 ^-6.951 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0.135 ^-6.926 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0.135 ^-6.9 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0.135 ^-6.874 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0.135 ^-6.848 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}