#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,45.18f,0f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,48.12f,0f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,51.12f,0f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,54.12f,0f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,57.18f,0f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,60.12f,0f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,63.18f,0f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,66.12f,0f]
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,69.12f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-1.515 ^1.059 ^1.506 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-1.586 ^1.075 ^1.422 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-1.654 ^1.095 ^1.334 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-1.717 ^1.117 ^1.242 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-1.777 ^1.143 ^1.146 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-1.828 ^1.169 ^1.05 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^-1.876 ^1.199 ^0.949 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^-1.916 ^1.229 ^0.848 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^-1.95 ^1.261 ^0.744 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:26}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:28}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:31}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:34}