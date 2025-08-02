#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [146.956f,5.62f,-110.396f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.107f,5.112f,-108.051f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.214f,4.655f,-105.782f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.286f,4.222f,-103.448f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.322f,3.833f,-101.145f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.325f,3.466f,-98.73f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.298f,3.151f,-96.394f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.24f,2.867f,-93.946f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [147.153f,2.623f,-91.434f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^4.258 ^-0.799 ^-2.625 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^4.432 ^-1.022 ^-2.639 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^4.599 ^-1.242 ^-2.65 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^4.77 ^-1.472 ^-2.658 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^4.937 ^-1.703 ^-2.665 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^5.11 ^-1.948 ^-2.669 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^5.275 ^-2.188 ^-2.672 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^5.445 ^-2.44 ^-2.672 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^5.615 ^-2.701 ^-2.671 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:240}