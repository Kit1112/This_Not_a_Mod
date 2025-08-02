#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75f,180f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0.392 ^-7.179 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0.392 ^-7.198 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.392 ^-7.216 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0.392 ^-7.234 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0.392 ^-7.25 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0.392 ^-7.265 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0.392 ^-7.278 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0.392 ^-7.29 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}