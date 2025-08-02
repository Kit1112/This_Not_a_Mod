#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15f,0f]
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0.135 ^-6.632 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0.135 ^-6.658 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0.135 ^-6.684 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0.135 ^-6.711 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0.135 ^-6.737 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0.135 ^-6.764 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^0.135 ^-6.791 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^0.135 ^-6.818 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^0.135 ^-6.844 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}