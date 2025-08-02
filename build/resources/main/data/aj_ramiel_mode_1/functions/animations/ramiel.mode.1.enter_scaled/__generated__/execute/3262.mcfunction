#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,81.12f,180f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,84.12f,180f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,87.06f,-180f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,89.858f,0f]
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,87.49f,0f]
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,84.864f,0f]
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,82.341f,0f]
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,79.56f,0f]
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,76.793f,0f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-0.874 ^-5.899 ^-0.137 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-0.831 ^-5.956 ^-0.086 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-0.792 ^-6.005 ^-0.041 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-0.769 ^-6.034 ^0.002 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-0.746 ^-6.061 ^0.033 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^-0.721 ^-6.088 ^0.065 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^-0.698 ^-6.112 ^0.094 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^-0.672 ^-6.137 ^0.124 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-0.647 ^-6.16 ^0.152 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:544}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3220}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:545}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3221}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:546}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3222}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:547}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3223}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:548}
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3224}
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:549}
execute if score #this.aj.anim aj.i matches 32 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3225}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:550}
execute if score #this.aj.anim aj.i matches 33 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3226}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:551}
execute if score #this.aj.anim aj.i matches 34 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3227}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:552}
execute if score #this.aj.anim aj.i matches 35 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3228}