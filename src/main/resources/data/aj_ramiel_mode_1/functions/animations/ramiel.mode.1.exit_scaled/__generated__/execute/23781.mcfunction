#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,57.06f,-180f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,58.56f,-180f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,60.03f,-180f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,61.56f,-180f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,63.06f,-180f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,64.56f,-180f]
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,66.03f,-180f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,67.56f,-180f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,69.03f,-180f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0 ^1.297 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0 ^1.279 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0 ^1.261 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0 ^1.243 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0 ^1.225 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0 ^1.207 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0 ^1.19 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0 ^1.172 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0 ^1.155 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2097}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4773}