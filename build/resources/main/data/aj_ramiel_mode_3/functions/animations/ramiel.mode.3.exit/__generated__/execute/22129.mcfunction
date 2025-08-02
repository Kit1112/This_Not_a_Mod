#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-30f,0f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^2.2 ^-1.918 ^3.81 ~ ~
execute if score #this.aj.anim aj.i matches 72..75 run tp @s ^1.898 ^-1.918 ^3.287 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^2.186 ^-1.918 ^3.787 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^2.515 ^-1.918 ^4.355 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^2.85 ^-1.918 ^4.936 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.185 ^-1.918 ^5.516 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^3.52 ^-1.918 ^6.097 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5600}