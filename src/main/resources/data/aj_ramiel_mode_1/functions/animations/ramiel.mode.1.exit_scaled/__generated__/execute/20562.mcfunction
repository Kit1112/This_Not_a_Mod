#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,70.56f,0f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,72.03f,0f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,73.56f,0f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,75.03f,0f]
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,76.53f,0f]
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,78.06f,0f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,79.56f,0f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,81.06f,0f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,82.56f,0f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0 ^-5.139 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0 ^-5.122 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0 ^-5.104 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0 ^-5.088 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0 ^-5.072 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0 ^-5.057 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0 ^-5.042 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0 ^-5.029 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0 ^-5.016 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1254}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3930}