#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,0.12f,0f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,3.12f,0f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,6.12f,0f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,9.12f,0f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,12.12f,0f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,15.12f,0f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,18.12f,0f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,21.12f,0f]
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,24.12f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-0.003 ^0.748 ^1.665 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-0.09 ^0.766 ^1.658 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-0.177 ^0.786 ^1.647 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-0.262 ^0.81 ^1.631 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-0.346 ^0.835 ^1.611 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-0.429 ^0.863 ^1.587 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^-0.51 ^0.893 ^1.558 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^-0.589 ^0.924 ^1.524 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^-0.665 ^0.958 ^1.485 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:223}
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2899}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:223}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2899}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:225}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2901}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:225}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2901}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:225}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2901}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:228}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2904}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:228}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2904}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:228}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2904}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:231}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2907}