#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 71..75 run tp @s ^1.91 ^-1.918 ^3.309 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^2.198 ^-1.918 ^3.808 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^2.527 ^-1.918 ^4.377 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^2.862 ^-1.918 ^4.957 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.197 ^-1.918 ^5.538 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^3.532 ^-1.918 ^6.118 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5785}