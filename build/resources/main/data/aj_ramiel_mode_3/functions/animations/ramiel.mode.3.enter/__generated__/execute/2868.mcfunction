#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.484f,-45.971f,-179.069f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.575f,-46.093f,-178.948f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.665f,-46.214f,-178.826f]
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.752f,-46.331f,-178.707f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.838f,-46.447f,-178.587f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.919f,-46.558f,-178.473f]
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.001f,-46.669f,-178.357f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.075f,-46.771f,-178.25f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.146f,-46.869f,-178.145f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.216f,-46.964f,-178.044f]
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.285f,-47.06f,-177.941f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.191 ^-2.454 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.191 ^-2.447 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.191 ^-2.441 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.191 ^-2.435 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.191 ^-2.429 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.191 ^-2.423 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0.191 ^-2.418 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0.191 ^-2.413 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0.191 ^-2.408 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0.191 ^-2.403 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0.191 ^-2.398 ^-0.191 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:707}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:710}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:716}