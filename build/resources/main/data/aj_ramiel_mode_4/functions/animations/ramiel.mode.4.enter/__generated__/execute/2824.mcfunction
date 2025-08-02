#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.311f,29.467f,-36.957f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.265f,29.479f,-36.928f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.215f,29.493f,-36.896f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.159f,29.508f,-36.86f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.101f,29.524f,-36.822f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.035f,29.542f,-36.78f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.966f,29.561f,-36.735f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-0.02 ^3.017 ^-4.958 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-0.02 ^3.014 ^-4.955 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-0.019 ^3.011 ^-4.951 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-0.019 ^3.007 ^-4.946 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-0.018 ^3.003 ^-4.942 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-0.018 ^2.999 ^-4.936 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-0.017 ^2.994 ^-4.931 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:518}
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:515}