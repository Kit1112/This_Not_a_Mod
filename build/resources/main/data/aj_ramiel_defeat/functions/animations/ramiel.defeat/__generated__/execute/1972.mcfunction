#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,38.435f,-90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,45.494f,-90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,52.694f,-90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.73f,59.085f,-91.75f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.634f,65.386f,-93.792f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.388f,71.728f,-95.713f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-143.765f,78.111f,-97.276f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-141.54f,84.403f,-97.21f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [11.385f,88.892f,53.457f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-4.048 ^-0.805 ^-1.06 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-4.159 ^-0.76 ^-0.948 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-4.347 ^-0.808 ^-0.82 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-4.471 ^-0.896 ^-0.695 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-4.582 ^-1.002 ^-0.561 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.701 ^-1.133 ^-0.418 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.824 ^-1.29 ^-0.268 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-4.947 ^-1.47 ^-0.116 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-5.073 ^-1.682 ^0.047 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:432}