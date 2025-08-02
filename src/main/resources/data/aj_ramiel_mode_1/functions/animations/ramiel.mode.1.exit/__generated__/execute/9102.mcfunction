#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-0.011 ^2.574 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-0.011 ^2.562 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-0.011 ^2.549 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-0.011 ^2.534 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-0.011 ^2.519 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-0.011 ^2.502 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^-0.011 ^2.483 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^-0.011 ^2.463 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^-0.011 ^2.443 ^-0.019 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:470}