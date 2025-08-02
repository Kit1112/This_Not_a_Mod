#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-42.48f,-180f]
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-39.48f,180f]
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-36.48f,180f]
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-33.48f,-180f]
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-30.48f,180f]
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-27.54f,-180f]
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-24.54f,180f]
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-21.48f,-180f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-18.48f,-180f]
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0.796 ^2.331 ^-0.869 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0.756 ^2.329 ^-0.918 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0.715 ^2.323 ^-0.967 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0.671 ^2.313 ^-1.015 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0.626 ^2.299 ^-1.064 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0.58 ^2.28 ^-1.112 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0.531 ^2.255 ^-1.162 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0.494 ^2.169 ^-1.255 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0.46 ^2.032 ^-1.377 ~ ~
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:110}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2786}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:54}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2730}
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:54}
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2730}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:113}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2789}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:114}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2790}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:115}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2791}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:116}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2792}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:52}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2728}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:118}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2794}