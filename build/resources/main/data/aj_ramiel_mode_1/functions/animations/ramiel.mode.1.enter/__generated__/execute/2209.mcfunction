#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75f,0f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^-0.46 ^-7.132 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^-0.46 ^-7.151 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^-0.46 ^-7.17 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^-0.46 ^-7.187 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^-0.46 ^-7.203 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^-0.46 ^-7.218 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^-0.46 ^-7.231 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^-0.46 ^-7.243 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}