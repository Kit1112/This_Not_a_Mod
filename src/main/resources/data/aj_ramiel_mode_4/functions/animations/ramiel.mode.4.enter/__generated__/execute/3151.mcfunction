#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.202f,29.768f,-36.243f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.103f,29.794f,-36.179f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.005f,29.821f,-36.115f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.905f,29.848f,-36.051f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.804f,29.876f,-35.986f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.702f,29.903f,-35.92f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.6f,29.931f,-35.854f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-0.003 ^4.504 ^-6.492 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-0.003 ^4.497 ^-6.48 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-0.002 ^4.491 ^-6.467 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-0.002 ^4.485 ^-6.454 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-0.002 ^4.478 ^-6.441 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-0.001 ^4.471 ^-6.427 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-0.001 ^4.464 ^-6.414 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:598}
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:597}