#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,56.409f,0f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,52.295f,0f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,48.277f,0f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,44.194f,0f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,40.132f,0f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,36.095f,0f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,32.165f,0f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,28.186f,0f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,24.163f,0f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.416 ^2.561 ^0.276 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.395 ^2.56 ^0.306 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.373 ^2.558 ^0.333 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.348 ^2.556 ^0.358 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.322 ^2.553 ^0.382 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.294 ^2.549 ^0.404 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.266 ^2.544 ^0.423 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.236 ^2.539 ^0.44 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.205 ^2.532 ^0.456 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}