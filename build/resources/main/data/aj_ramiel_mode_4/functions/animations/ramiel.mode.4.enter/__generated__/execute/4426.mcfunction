#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.727f,20.054f,-166.634f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.607f,19.931f,-166.62f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.504f,19.826f,-166.608f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.419f,19.739f,-166.598f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.348f,19.666f,-166.589f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.294f,19.611f,-166.583f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.255f,19.571f,-166.578f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^-3.011 ^-4.212 ^-3.952 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^-3.017 ^-4.221 ^-3.952 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^-3.023 ^-4.229 ^-3.952 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^-3.028 ^-4.236 ^-3.952 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^-3.032 ^-4.243 ^-3.952 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^-3.036 ^-4.248 ^-3.952 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^-3.039 ^-4.252 ^-3.952 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:677}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:678}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:680}