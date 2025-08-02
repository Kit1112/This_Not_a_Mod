#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-54.12f,0f]
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-57.12f,0f]
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-60.12f,0f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-63.12f,0f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-66.12f,0f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-69.18f,0f]
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-72.12f,0f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-75.12f,0f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-78.12f,0f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0.96 ^-5.439 ^0.694 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.963 ^-5.496 ^0.622 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.956 ^-5.557 ^0.549 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.941 ^-5.619 ^0.477 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.919 ^-5.683 ^0.407 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.89 ^-5.748 ^0.339 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.858 ^-5.81 ^0.277 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.821 ^-5.871 ^0.218 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.783 ^-5.931 ^0.165 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:731}
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3407}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:732}
execute if score #this.aj.anim aj.i matches 19 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3408}
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:733}
execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3409}
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:734}
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3410}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:735}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3411}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:736}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3412}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:737}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3413}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:738}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3414}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:739}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3415}