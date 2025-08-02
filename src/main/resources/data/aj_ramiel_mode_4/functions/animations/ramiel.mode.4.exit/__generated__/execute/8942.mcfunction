#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-88.972f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-106.616f]
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-123.544f]
execute if score #this.aj.anim aj.i matches 64 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-139.471f]
execute if score #this.aj.anim aj.i matches 65 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-155.386f]
execute if score #this.aj.anim aj.i matches 66 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,-170.367f]
execute if score #this.aj.anim aj.i matches 67 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,175.515f]
execute if score #this.aj.anim aj.i matches 68 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [90f,0f,161.651f]
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0 ^-1.918 ^4.342 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0 ^-1.918 ^4.355 ~ ~
execute if score #this.aj.anim aj.i matches 63 run tp @s ^0 ^-1.918 ^4.369 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^0 ^-1.918 ^4.382 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^0 ^-1.918 ^4.396 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^0 ^-1.918 ^4.409 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^0 ^-1.918 ^4.422 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^0 ^-1.918 ^4.436 ~ ~
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:1572}