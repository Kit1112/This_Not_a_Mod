#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75f,0f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0.011 ^-6.082 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0.011 ^-6.109 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0.011 ^-6.135 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0.011 ^-6.16 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0.011 ^-6.185 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0.011 ^-6.209 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0.011 ^-6.232 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0.011 ^-6.254 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0.011 ^-6.276 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:965}