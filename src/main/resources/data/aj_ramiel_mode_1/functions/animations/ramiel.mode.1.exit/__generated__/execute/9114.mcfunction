#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^-0.011 ^2.426 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^-0.011 ^2.403 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.011 ^2.381 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.011 ^2.352 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.011 ^2.327 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.011 ^2.302 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-0.011 ^2.276 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.011 ^2.25 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.011 ^2.224 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}