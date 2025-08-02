#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-0.011 ^2.008 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-0.011 ^2.034 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-0.011 ^2.06 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-0.011 ^2.087 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-0.011 ^2.113 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-0.011 ^2.14 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-0.011 ^2.167 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-0.011 ^2.194 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-0.011 ^2.22 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}