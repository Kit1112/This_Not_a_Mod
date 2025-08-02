#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.311f,29.467f,-36.957f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.265f,29.479f,-36.928f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.215f,29.493f,-36.896f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.159f,29.508f,-36.86f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.101f,29.524f,-36.822f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.035f,29.542f,-36.78f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.966f,29.561f,-36.735f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.006 ^4.544 ^-6.603 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.006 ^4.569 ^-6.627 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.006 ^4.57 ^-6.625 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-0.005 ^4.566 ^-6.617 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.005 ^4.561 ^-6.609 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.005 ^4.557 ^-6.6 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.005 ^4.552 ^-6.591 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:599}
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:600}