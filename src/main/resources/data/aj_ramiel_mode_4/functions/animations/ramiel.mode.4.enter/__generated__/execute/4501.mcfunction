#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.696f,22.07f,-166.869f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.891f,22.269f,-166.892f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.084f,22.467f,-166.915f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.28f,22.668f,-166.938f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.478f,22.87f,-166.962f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.677f,23.075f,-166.985f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-70.878f,23.28f,-167.009f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-3.029 ^-4.188 ^-3.948 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-3.027 ^-4.182 ^-3.947 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-3.025 ^-4.175 ^-3.947 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-3.024 ^-4.169 ^-3.946 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-3.022 ^-4.162 ^-3.945 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-3.02 ^-4.155 ^-3.945 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-3.018 ^-4.148 ^-3.944 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:677}