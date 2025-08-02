#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.699f,30.175f,-35.273f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.604f,30.201f,-35.212f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.512f,30.226f,-35.152f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.422f,30.25f,-35.095f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.335f,30.274f,-35.039f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.253f,30.296f,-34.986f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.172f,30.318f,-34.934f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-0.003 ^1.555 ^-3.46 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-0.002 ^1.549 ^-3.456 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^-0.001 ^1.543 ^-3.453 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0 ^1.537 ^-3.449 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.001 ^1.531 ^-3.446 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.002 ^1.526 ^-3.442 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.003 ^1.521 ^-3.439 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:414}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:413}