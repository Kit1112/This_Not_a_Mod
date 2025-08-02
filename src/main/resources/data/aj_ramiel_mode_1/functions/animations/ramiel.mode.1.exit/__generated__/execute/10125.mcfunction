#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75f,180f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0.392 ^-6.915 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.392 ^-6.888 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.392 ^-6.862 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.392 ^-6.834 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.392 ^-6.807 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.392 ^-6.781 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.392 ^-6.755 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.392 ^-6.728 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.392 ^-6.703 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}