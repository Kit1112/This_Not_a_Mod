#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-53.5f,30.5f,-34.5f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-51.76f,30.972f,-33.378f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-49.11f,31.69f,-31.669f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-45.922f,32.554f,-29.613f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^0.009 ^2.162 ^-4.061 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^0.009 ^2.15 ^-4.048 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^0.009 ^2.138 ^-4.037 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^0.009 ^2.126 ^-4.025 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^0.023 ^2.121 ^-3.909 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^0.045 ^2.114 ^-3.739 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^0.07 ^2.099 ^-3.537 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:578}