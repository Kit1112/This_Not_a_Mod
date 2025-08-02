#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,75f,0f]
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-0.46 ^-6.679 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-0.46 ^-6.705 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-0.46 ^-6.731 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-0.46 ^-6.757 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-0.46 ^-6.784 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-0.46 ^-6.811 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-0.46 ^-6.838 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-0.46 ^-6.865 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-0.46 ^-6.891 ^0.123 ~ ~
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}