#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-51.76f,30.972f,-33.378f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-49.11f,31.69f,-31.669f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-45.922f,32.554f,-29.613f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0.01 ^1.247 ^-3.182 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0.01 ^1.235 ^-3.17 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0.01 ^1.223 ^-3.158 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0.01 ^1.211 ^-3.146 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0.027 ^1.183 ^-3.055 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^0.052 ^1.142 ^-2.923 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^0.08 ^1.089 ^-2.769 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:481}
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:395}