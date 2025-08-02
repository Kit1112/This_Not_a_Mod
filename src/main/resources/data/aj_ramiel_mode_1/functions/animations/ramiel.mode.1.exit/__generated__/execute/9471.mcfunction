#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75f,0f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-0.46 ^-6.631 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-0.46 ^-6.606 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-0.46 ^-6.583 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-0.46 ^-6.56 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-0.46 ^-6.537 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^-0.46 ^-6.516 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^-0.46 ^-6.495 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^-0.46 ^-6.476 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-0.46 ^-6.457 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}