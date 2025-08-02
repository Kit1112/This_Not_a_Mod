#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.498f,29.959f,-35.788f]
execute if score #this.aj.anim aj.i matches 92 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.395f,29.986f,-35.722f]
execute if score #this.aj.anim aj.i matches 93 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.293f,30.014f,-35.656f]
execute if score #this.aj.anim aj.i matches 94 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.191f,30.042f,-35.591f]
execute if score #this.aj.anim aj.i matches 95 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-55.09f,30.069f,-35.525f]
execute if score #this.aj.anim aj.i matches 96 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.99f,30.096f,-35.461f]
execute if score #this.aj.anim aj.i matches 97 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.893f,30.122f,-35.398f]
execute if score #this.aj.anim aj.i matches 98 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.793f,30.149f,-35.334f]
execute if score #this.aj.anim aj.i matches 91 run tp @s ^-0.011 ^1.605 ^-3.491 ~ ~
execute if score #this.aj.anim aj.i matches 92 run tp @s ^-0.01 ^1.598 ^-3.487 ~ ~
execute if score #this.aj.anim aj.i matches 93 run tp @s ^-0.009 ^1.592 ^-3.483 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-0.008 ^1.586 ^-3.479 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-0.007 ^1.579 ^-3.475 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-0.006 ^1.573 ^-3.471 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-0.005 ^1.567 ^-3.468 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-0.004 ^1.561 ^-3.464 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:414}