#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,42.48f,180f]
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,39.48f,180f]
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,36.48f,-180f]
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,33.48f,-180f]
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,30.48f,-180f]
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,27.54f,-180f]
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,24.54f,180f]
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,21.48f,-180f]
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,18.48f,-180f]
execute if score #this.aj.anim aj.i matches 126 run tp @s ^-0.591 ^-6.06 ^-0.646 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^-0.562 ^-6.057 ^-0.682 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^-0.531 ^-6.05 ^-0.718 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^-0.499 ^-6.039 ^-0.754 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^-0.465 ^-6.023 ^-0.79 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-0.431 ^-6.003 ^-0.826 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-0.394 ^-5.976 ^-0.863 ~ ~
execute if score #this.aj.anim aj.i matches 133 run tp @s ^-0.367 ^-5.883 ^-0.933 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^-0.342 ^-5.737 ^-1.023 ~ ~
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:600}
execute if score #this.aj.anim aj.i matches 126 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3276}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:544}
execute if score #this.aj.anim aj.i matches 127 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3220}
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:544}
execute if score #this.aj.anim aj.i matches 128 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3220}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:603}
execute if score #this.aj.anim aj.i matches 129 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3279}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:604}
execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3280}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:605}
execute if score #this.aj.anim aj.i matches 131 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3281}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:606}
execute if score #this.aj.anim aj.i matches 132 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3282}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:542}
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3218}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:608}
execute if score #this.aj.anim aj.i matches 134 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3284}