#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75f,0f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-0.46 ^-6.917 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-0.46 ^-6.944 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^-0.46 ^-6.969 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^-0.46 ^-6.995 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^-0.46 ^-7.019 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^-0.46 ^-7.043 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^-0.46 ^-7.067 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-0.46 ^-7.089 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-0.46 ^-7.111 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}