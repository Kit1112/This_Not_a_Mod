#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-84.084f,0f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-80.374f,0f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-76.465f,0f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-72.666f,0f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-68.67f,0f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-64.716f,0f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-60.728f,0f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-56.79f,0f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-52.665f,0f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0.474 ^-6.379 ^0.049 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0.47 ^-6.383 ^0.08 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0.463 ^-6.388 ^0.111 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0.455 ^-6.392 ^0.142 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0.444 ^-6.396 ^0.173 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0.431 ^-6.401 ^0.203 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0.415 ^-6.405 ^0.233 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0.398 ^-6.409 ^0.261 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^0.379 ^-6.413 ^0.289 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:565}
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3241}