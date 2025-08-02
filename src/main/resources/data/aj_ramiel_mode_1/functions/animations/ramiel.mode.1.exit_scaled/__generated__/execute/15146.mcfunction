#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,20.52f,-180f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,23.52f,-180f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,26.52f,-180f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,29.52f,-180f]
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,32.52f,-180f]
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,35.52f,-180f]
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,38.52f,-180f]
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,41.52f,-180f]
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,44.52f,-180f]
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-0.322 ^2.148 ^-0.86 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-0.368 ^2.155 ^-0.846 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-0.414 ^2.164 ^-0.829 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-0.459 ^2.172 ^-0.81 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-0.502 ^2.181 ^-0.788 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-0.545 ^2.189 ^-0.764 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-0.587 ^2.195 ^-0.738 ~ ~
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-0.629 ^2.2 ^-0.71 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-0.669 ^2.203 ^-0.681 ~ ~
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:153}
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2829}
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:153}
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2829}
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:153}
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2829}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:202}
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2878}
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:202}
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2878}
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:202}
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2878}
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:205}
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2881}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:205}
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2881}
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:205}
execute if score #this.aj.anim aj.i matches 125 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2881}