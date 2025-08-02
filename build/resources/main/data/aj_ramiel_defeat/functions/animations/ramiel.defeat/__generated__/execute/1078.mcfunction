#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-38.435f,-90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-45.494f,-90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-52.694f,-90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.729f,-60.42f,-88.214f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.619f,-68.237f,-85.98f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.281f,-76.013f,-83.489f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [142.887f,-83.743f,-79.908f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-21.54f,-88.68f,86.698f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-32.411f,-80.909f,99.879f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^3.892 ^-2.852 ^-1.519 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^4.002 ^-3.108 ^-1.359 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^4.19 ^-3.427 ^-1.175 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^4.227 ^-3.737 ^-0.957 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^4.221 ^-4.015 ^-0.717 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^4.212 ^-4.265 ^-0.463 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^4.204 ^-4.486 ^-0.201 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^4.199 ^-4.672 ^0.059 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^4.201 ^-4.835 ^0.328 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:146}