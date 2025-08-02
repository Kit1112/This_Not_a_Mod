#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-74.52f,180f]
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-77.52f,-180f]
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-80.52f,-180f]
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-83.52f,-180f]
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-86.52f,-180f]
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,-89.52f,-180f]
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,35.25f]
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.999 ^-5.639 ^-0.277 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^1.095 ^-5.451 ^-0.242 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^1.19 ^-5.261 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^1.277 ^-5.084 ^-0.145 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^1.35 ^-4.932 ^-0.082 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^1.402 ^-4.822 ^-0.012 ~ ~
execute if score #this.aj.anim aj.i matches 141..142 run tp @s ^1.408 ^-4.809 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:903}
execute if score #this.aj.anim aj.i matches 135 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3579}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:904}
execute if score #this.aj.anim aj.i matches 136 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3580}
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:905}
execute if score #this.aj.anim aj.i matches 137 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3581}
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:827}
execute if score #this.aj.anim aj.i matches 138 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3503}
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:822}
execute if score #this.aj.anim aj.i matches 139 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3498}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:811}
execute if score #this.aj.anim aj.i matches 140 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3487}
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:811}
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3487}
execute if score #this.aj.anim aj.i matches 142 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:811}
execute if score #this.aj.anim aj.i matches 142 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:3487}