#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,51.565f,-90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,44.506f,-90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,37.306f,-90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.988f,29.58f,-88.238f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.948f,21.763f,-86.121f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.883f,13.987f,-83.972f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.796f,6.253f,-81.782f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.687f,-1.283f,-79.588f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [179.546f,-9.08f,-77.246f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^1.109 ^-1.719 ^-0.008 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^1.22 ^-1.798 ^0.001 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^1.408 ^-1.957 ^0.01 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^1.495 ^-2.036 ^0.02 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^1.562 ^-2.097 ^0.029 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^1.636 ^-2.163 ^0.038 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^1.717 ^-2.236 ^0.046 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^1.803 ^-2.313 ^0.053 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^1.899 ^-2.399 ^0.06 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:178}