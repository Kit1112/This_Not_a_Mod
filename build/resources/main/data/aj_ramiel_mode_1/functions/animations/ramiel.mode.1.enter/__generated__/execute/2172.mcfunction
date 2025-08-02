#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-0.46 ^-6.473 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-0.46 ^-6.492 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-0.46 ^-6.513 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-0.46 ^-6.534 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-0.46 ^-6.556 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-0.46 ^-6.579 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-0.46 ^-6.603 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-0.46 ^-6.628 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-0.46 ^-6.653 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}