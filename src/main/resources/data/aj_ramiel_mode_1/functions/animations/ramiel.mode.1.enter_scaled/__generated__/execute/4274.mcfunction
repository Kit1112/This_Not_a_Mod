#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-0.12f,0f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-3.12f,0f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-6.12f,0f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-9.12f,0f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-12.12f,0f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15.12f,0f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-18.12f,0f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-21.12f,0f]
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-24.12f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0.003 ^-4.857 ^1.353 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0.073 ^-4.874 ^1.347 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0.143 ^-4.894 ^1.338 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0.213 ^-4.917 ^1.325 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0.281 ^-4.942 ^1.309 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.348 ^-4.969 ^1.289 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.414 ^-4.998 ^1.265 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.478 ^-5.029 ^1.238 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0.54 ^-5.061 ^1.206 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:713}
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3389}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:713}
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3389}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:715}
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3391}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:715}
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3391}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:715}
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3391}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:718}
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3394}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:718}
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3394}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:718}
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3394}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:721}
execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3397}