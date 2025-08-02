#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,38.435f,90f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,45.494f,90f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.25f,52.694f,90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.229f,60.42f,91.786f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-35.119f,68.237f,94.02f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-34.781f,76.013f,96.511f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-33.387f,83.743f,100.092f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [131.04f,88.68f,-93.302f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [141.911f,80.909f,-80.121f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^3.853 ^-0.562 ^1.366 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^3.963 ^-0.481 ^1.222 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^4.151 ^-0.498 ^1.057 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^4.286 ^-0.534 ^0.861 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^4.413 ^-0.6 ^0.649 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^4.548 ^-0.707 ^0.427 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^4.688 ^-0.857 ^0.2 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^4.826 ^-1.044 ^-0.024 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^4.966 ^-1.28 ^-0.254 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:82}