#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-0.011 ^2.246 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-0.011 ^2.273 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^-0.011 ^2.299 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^-0.011 ^2.324 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^-0.011 ^2.349 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^-0.011 ^2.373 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^-0.011 ^2.396 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-0.011 ^2.418 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-0.011 ^2.44 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}