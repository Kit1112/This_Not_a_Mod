#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-78.997f,180f]
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-77.074f,180f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75.276f,180f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75f,180f]
execute if score #this.aj.anim aj.i matches 98 run tp @s ^0.398 ^-6.417 ^-0.077 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.396 ^-6.423 ^-0.091 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.393 ^-6.431 ^-0.103 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.392 ^-6.442 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.392 ^-6.455 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.392 ^-6.469 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.392 ^-6.484 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.392 ^-6.502 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}