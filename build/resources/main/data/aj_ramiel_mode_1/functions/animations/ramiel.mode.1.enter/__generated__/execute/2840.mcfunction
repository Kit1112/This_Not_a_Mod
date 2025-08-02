#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75f,180f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.392 ^-6.52 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.392 ^-6.539 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.392 ^-6.56 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.392 ^-6.581 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.392 ^-6.603 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.392 ^-6.626 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.392 ^-6.65 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.392 ^-6.675 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.392 ^-6.7 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}