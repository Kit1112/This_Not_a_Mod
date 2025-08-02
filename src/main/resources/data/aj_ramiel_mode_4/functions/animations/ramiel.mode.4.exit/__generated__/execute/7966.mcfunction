#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-8.768f,42.624f,-5.654f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-5.418f,43.531f,-3.494f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-2.524f,44.316f,-1.628f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-0.332f,44.91f,-0.214f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,45f,0f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.056 ^-0.238 ^-2.507 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.032 ^-0.541 ^-2.613 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.013 ^-0.826 ^-2.752 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.001 ^-1.073 ^-2.905 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0 ^-1.294 ^-3.082 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0 ^-1.487 ^-3.242 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0 ^-1.666 ^-3.391 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:578}