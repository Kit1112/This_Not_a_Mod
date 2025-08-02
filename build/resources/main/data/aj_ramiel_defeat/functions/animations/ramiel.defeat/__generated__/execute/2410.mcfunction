#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-38.435f,90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45.494f,90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-52.694f,90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-0.02f,-59.085f,88.25f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-0.116f,-65.386f,86.208f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-0.362f,-71.728f,84.287f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-0.985f,-78.111f,82.724f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-3.21f,-84.403f,82.79f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-156.135f,-88.892f,-126.543f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-1.109 ^-1.573 ^-0.008 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-1.22 ^-1.651 ^0.001 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-1.408 ^-1.812 ^0.01 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-1.5 ^-1.894 ^0.018 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-1.571 ^-1.96 ^0.026 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-1.649 ^-2.035 ^0.033 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-1.734 ^-2.118 ^0.04 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-1.822 ^-2.207 ^0.047 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-1.92 ^-2.307 ^0.053 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:496}