#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,70.468f,-180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,67.326f,-180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,63.976f,-180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,60.616f,-180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,57.185f,180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,53.757f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,50.124f,-180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,46.573f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,42.893f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-0.449 ^-6.349 ^-0.159 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-0.439 ^-6.351 ^-0.184 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-0.428 ^-6.353 ^-0.209 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-0.415 ^-6.356 ^-0.234 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-0.4 ^-6.359 ^-0.258 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-0.384 ^-6.363 ^-0.282 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-0.365 ^-6.367 ^-0.305 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^-0.346 ^-6.37 ^-0.327 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^-0.324 ^-6.374 ^-0.349 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:569}