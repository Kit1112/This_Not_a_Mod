#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,51.565f,90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,44.506f,90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,37.306f,90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.238f,30.915f,88.226f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.197f,24.614f,86.08f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.131f,18.272f,83.906f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.043f,11.888f,81.717f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.936f,5.589f,79.565f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [34.802f,-1.014f,77.326f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-4 ^-0.543 ^0.876 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-4.11 ^-0.737 ^1.004 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-4.298 ^-1.031 ^1.12 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-4.409 ^-1.331 ^1.209 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-4.489 ^-1.64 ^1.283 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.561 ^-1.966 ^1.343 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.623 ^-2.306 ^1.388 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-4.673 ^-2.649 ^1.418 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-4.713 ^-3.013 ^1.431 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:464}