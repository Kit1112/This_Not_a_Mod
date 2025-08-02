#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75f,180f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0.392 ^-6.964 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0.392 ^-6.991 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0.392 ^-7.016 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0.392 ^-7.042 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0.392 ^-7.066 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0.392 ^-7.09 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0.392 ^-7.114 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0.392 ^-7.136 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0.392 ^-7.158 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}