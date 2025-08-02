#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.696f,-45.971f,-0.936f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.623f,-46.093f,-1.059f]
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.55f,-46.214f,-1.182f]
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.478f,-46.331f,-1.302f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.405f,-46.447f,-1.423f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.336f,-46.558f,-1.539f]
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.265f,-46.669f,-1.657f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.199f,-46.771f,-1.765f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.135f,-46.869f,-1.871f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.073f,-46.964f,-1.974f]
execute if score #this.aj.anim aj.i matches 31 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.01f,-47.06f,-2.078f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.246 ^-1.418 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.246 ^-1.424 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.246 ^-1.43 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.246 ^-1.435 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.246 ^-1.441 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.246 ^-1.446 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0.246 ^-1.452 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0.246 ^-1.456 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0.246 ^-1.461 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0.246 ^-1.465 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0.246 ^-1.47 ^0.246 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:156}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:159}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:165}