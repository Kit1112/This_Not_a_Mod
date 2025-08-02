#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75f,180f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-75.034f,180f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-76.852f,180f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-78.799f,180f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-80.748f,180f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-82.893f,180f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^0.392 ^-6.486 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^0.392 ^-6.471 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^0.392 ^-6.456 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^0.392 ^-6.443 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^0.392 ^-6.432 ^-0.105 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^0.395 ^-6.424 ^-0.092 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^0.398 ^-6.417 ^-0.079 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^0.401 ^-6.411 ^-0.065 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^0.403 ^-6.406 ^-0.05 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:767}