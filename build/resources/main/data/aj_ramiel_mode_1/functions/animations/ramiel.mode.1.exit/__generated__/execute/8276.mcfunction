#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,69.743f,-180f]
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,73.608f,-180f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,77.351f,180f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,81.198f,-180f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,84.844f,180f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,88.655f,-180f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,87.811f,0f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,84.337f,0f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,80.788f,0f]
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.491 ^2.548 ^-0.181 ~ ~
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.502 ^2.539 ^-0.148 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-0.518 ^2.529 ^-0.116 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-0.536 ^2.516 ^-0.083 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-0.553 ^2.5 ^-0.05 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-0.571 ^2.482 ^-0.013 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-0.587 ^2.463 ^0.022 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-0.601 ^2.443 ^0.06 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-0.615 ^2.42 ^0.1 ~ ~
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:173}
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:172}
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:171}
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:169}
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:168}
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:167}
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:166}