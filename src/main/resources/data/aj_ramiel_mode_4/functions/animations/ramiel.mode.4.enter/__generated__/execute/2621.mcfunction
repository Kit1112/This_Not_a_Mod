#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.093f,30.339f,-34.883f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-54.021f,30.359f,-34.836f]
execute if score #this.aj.anim aj.i matches 108 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.95f,30.378f,-34.79f]
execute if score #this.aj.anim aj.i matches 109 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.884f,30.396f,-34.747f]
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.822f,30.413f,-34.708f]
execute if score #this.aj.anim aj.i matches 111 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.765f,30.428f,-34.671f]
execute if score #this.aj.anim aj.i matches 112 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.713f,30.442f,-34.638f]
execute if score #this.aj.anim aj.i matches 113 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.666f,30.455f,-34.607f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.004 ^1.516 ^-3.436 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.004 ^1.511 ^-3.433 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.005 ^1.507 ^-3.43 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.006 ^1.502 ^-3.428 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.006 ^1.498 ^-3.425 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.007 ^1.495 ^-3.423 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.007 ^1.491 ^-3.421 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.008 ^1.488 ^-3.419 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:413}
execute if score #this.aj.anim aj.i matches 110 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:456}