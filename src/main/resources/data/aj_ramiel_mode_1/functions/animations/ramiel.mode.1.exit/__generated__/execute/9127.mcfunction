#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.011 ^2.198 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.011 ^2.171 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.011 ^2.144 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-0.011 ^2.117 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-0.011 ^2.09 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-0.011 ^2.063 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-0.011 ^2.037 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-0.011 ^2.011 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-0.011 ^1.985 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}