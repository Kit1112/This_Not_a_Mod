#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15f,0f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0.135 ^-7.085 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0.135 ^-7.104 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.135 ^-7.123 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0.135 ^-7.14 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0.135 ^-7.157 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0.135 ^-7.171 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0.135 ^-7.184 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0.135 ^-7.196 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}