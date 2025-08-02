#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-51.565f,90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-44.506f,90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,-37.306f,90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.238f,-29.58f,91.762f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.198f,-21.763f,93.879f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.133f,-13.987f,96.028f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.046f,-6.253f,98.218f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.937f,1.283f,100.412f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.796f,9.08f,102.754f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^3.775 ^-2.951 ^1.035 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^3.885 ^-2.892 ^1.188 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^4.073 ^-2.894 ^1.325 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^4.136 ^-2.869 ^1.449 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^4.182 ^-2.826 ^1.549 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^4.247 ^-2.782 ^1.621 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^4.331 ^-2.74 ^1.665 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^4.432 ^-2.706 ^1.68 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^4.554 ^-2.683 ^1.665 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:114}