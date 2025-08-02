#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.661f,73.311f,-77.063f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.883f,65.609f,-74.437f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.948f,58.255f,-72.016f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.946f,50.8f,-69.561f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.907f,43.543f,-67.139f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.839f,36.041f,-64.587f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.753f,28.883f,-62.096f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.644f,21.485f,-59.459f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.512f,13.997f,-56.717f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^5.096 ^-1.549 ^-0.472 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^5.217 ^-1.86 ^-0.683 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^5.319 ^-2.19 ^-0.872 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^5.407 ^-2.552 ^-1.047 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^5.474 ^-2.929 ^-1.199 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^5.521 ^-3.339 ^-1.335 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^5.545 ^-3.744 ^-1.442 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^5.546 ^-4.172 ^-1.528 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^5.522 ^-4.608 ^-1.587 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:82}