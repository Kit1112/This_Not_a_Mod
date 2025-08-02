#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,147.33f]
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,73.66f]
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-0.921f]
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-74.717f]
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-148.988f]
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,139.37f]
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,69.078f]
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0 ^-1.918 ^8.746 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0 ^-1.918 ^8.743 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0 ^-1.918 ^8.74 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0 ^-1.918 ^8.737 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0 ^-1.918 ^8.734 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0 ^-1.918 ^8.732 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0 ^-1.918 ^8.729 ~ ~
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1412}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1409}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1407}