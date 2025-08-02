#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.895f,29.58f,-36.689f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.819f,29.6f,-36.64f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.734f,29.623f,-36.586f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.656f,29.645f,-36.535f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.569f,29.668f,-36.479f]
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.48f,29.692f,-36.422f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.389f,29.717f,-36.363f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.296f,29.742f,-36.303f]
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-0.027 ^1.686 ^-3.539 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-0.026 ^1.682 ^-3.537 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-0.025 ^1.677 ^-3.534 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-0.024 ^1.673 ^-3.532 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-0.023 ^1.668 ^-3.529 ~ ~
execute if score #this.aj.anim aj.i matches 81 run tp @s ^-0.022 ^1.663 ^-3.526 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^-0.021 ^1.658 ^-3.523 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^-0.02 ^1.652 ^-3.52 ~ ~
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:416}