#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,60f,0f]
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.81 ^-1.918 ^2.2 ~ ~
execute if score #this.aj.anim aj.i matches 72..75 run tp @s ^-3.287 ^-1.918 ^1.898 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-3.787 ^-1.918 ^2.186 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.355 ^-1.918 ^2.515 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.936 ^-1.918 ^2.85 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-5.516 ^-1.918 ^3.185 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-6.097 ^-1.918 ^3.52 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1811}