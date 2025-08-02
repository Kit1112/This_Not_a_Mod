#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.895f,29.58f,-36.689f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.819f,29.6f,-36.64f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.734f,29.623f,-36.586f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.656f,29.645f,-36.535f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.569f,29.668f,-36.479f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.48f,29.692f,-36.422f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.389f,29.717f,-36.363f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.296f,29.742f,-36.303f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.005 ^4.547 ^-6.582 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.005 ^4.542 ^-6.572 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.004 ^4.537 ^-6.561 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.004 ^4.532 ^-6.551 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.004 ^4.527 ^-6.54 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.004 ^4.521 ^-6.528 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.003 ^4.516 ^-6.517 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.003 ^4.51 ^-6.505 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:599}
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:598}