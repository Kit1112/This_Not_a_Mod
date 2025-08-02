#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75f,180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0.392 ^-7.292 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0.392 ^-7.28 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0.392 ^-7.267 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0.392 ^-7.252 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0.392 ^-7.236 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.392 ^-7.219 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.392 ^-7.201 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.392 ^-7.181 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0.392 ^-7.16 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}