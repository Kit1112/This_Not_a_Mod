#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75f,180f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0.392 ^-7.144 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0.392 ^-7.121 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0.392 ^-7.098 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0.392 ^-7.07 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0.392 ^-7.045 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0.392 ^-7.019 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0.392 ^-6.994 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0.392 ^-6.968 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0.392 ^-6.941 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}