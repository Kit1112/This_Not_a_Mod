#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,57.22f,-180f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,57.377f,-180f]
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,57.588f,-180f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,57.864f,-180f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,58.219f,-180f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,58.665f,-180f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,59.215f,-180f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,59.882f,-180f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0 ^-3.843 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0 ^-3.851 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0 ^-3.858 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0 ^-3.865 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0 ^-3.871 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0 ^-3.877 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0 ^-3.882 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0 ^-3.886 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2581}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:5257}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2581}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:5257}
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2581}
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:5257}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2581}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:5257}
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2581}
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:5257}
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2581}
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:5257}
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2581}
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:5257}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2581}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:5257}