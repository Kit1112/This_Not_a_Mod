#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,45f,90f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,50.929f,90f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,57.988f,90f]
execute if score #this.aj.anim aj.i matches 54..60 run tp @s ^2.976 ^-0.407 ^1.511 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^3.092 ^-0.259 ^1.347 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^3.294 ^-0.106 ^1.133 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:50}