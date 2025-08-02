#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15f,-180f]
execute if score #this.aj.anim aj.i matches 40 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,14.966f,-180f]
execute if score #this.aj.anim aj.i matches 41 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,13.148f,-180f]
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,11.201f,180f]
execute if score #this.aj.anim aj.i matches 43 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,9.252f,-180f]
execute if score #this.aj.anim aj.i matches 44 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,7.107f,-180f]
execute if score #this.aj.anim aj.i matches 36 run tp @s ^-0.109 ^-6.472 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 37 run tp @s ^-0.109 ^-6.457 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 38 run tp @s ^-0.109 ^-6.442 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 39 run tp @s ^-0.109 ^-6.429 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 40 run tp @s ^-0.109 ^-6.418 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 41 run tp @s ^-0.096 ^-6.41 ^-0.411 ~ ~
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-0.082 ^-6.403 ^-0.414 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-0.068 ^-6.397 ^-0.417 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-0.052 ^-6.392 ^-0.419 ~ ~
execute if score #this.aj.anim aj.i matches 36 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}