#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.625f,30.466f,-34.581f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.589f,30.476f,-34.557f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.558f,30.484f,-34.538f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.534f,30.491f,-34.522f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.516f,30.496f,-34.51f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.505f,30.499f,-34.503f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.006 ^4.326 ^-6.156 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^0.006 ^4.324 ^-6.151 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^0.007 ^4.321 ^-6.147 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^0.007 ^4.32 ^-6.144 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^0.007 ^4.318 ^-6.141 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^0.007 ^4.318 ^-6.14 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^0.007 ^4.317 ^-6.139 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:595}