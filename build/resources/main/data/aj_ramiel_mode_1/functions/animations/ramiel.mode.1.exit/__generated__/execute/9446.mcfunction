#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75f,0f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^-0.46 ^-7.097 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^-0.46 ^-7.074 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.46 ^-7.051 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.46 ^-7.023 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.46 ^-6.998 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.46 ^-6.972 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-0.46 ^-6.947 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.46 ^-6.921 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.46 ^-6.894 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}