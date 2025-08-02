#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,77.378f,180f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,74.04f,180f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,70.842f,180f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,67.594f,-180f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,64.554f,180f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,61.478f,180f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,58.552f,180f]
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,55.718f,180f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,52.981f,180f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.487 ^-6.305 ^-0.109 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.494 ^-6.284 ^-0.141 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.501 ^-6.263 ^-0.174 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^-0.505 ^-6.24 ^-0.208 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^-0.508 ^-6.219 ^-0.242 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^-0.508 ^-6.198 ^-0.276 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^-0.507 ^-6.177 ^-0.31 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-0.504 ^-6.158 ^-0.343 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-0.499 ^-6.14 ^-0.376 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:759}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:757}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:756}
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:755}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:754}
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:781}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:752}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:783}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:784}