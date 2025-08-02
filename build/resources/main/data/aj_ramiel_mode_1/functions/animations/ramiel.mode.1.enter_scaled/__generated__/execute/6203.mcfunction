#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-29.69f,0f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-33.735f,0f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-37.78f,0f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-41.825f,0f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45.87f,0f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-49.915f,0f]
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-53.879f,0f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-57.924f,0f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0 ^-5.264 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0 ^-5.269 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0 ^-5.274 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0 ^-5.279 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0 ^-5.284 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0 ^-5.288 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^0 ^-5.291 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^0 ^-5.295 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1056}
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3732}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1058}
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3734}
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1058}
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3734}
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1060}
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3736}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1060}
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3736}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1062}
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3738}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1063}
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3739}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1064}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3740}