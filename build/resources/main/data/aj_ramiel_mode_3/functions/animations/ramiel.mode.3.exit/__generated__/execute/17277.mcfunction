#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,15f,180f]
execute if score #this.aj.anim aj.i matches 71..75 run tp @s ^-3.309 ^-1.918 ^-1.91 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-3.808 ^-1.918 ^-2.198 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-4.377 ^-1.918 ^-2.527 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-4.957 ^-1.918 ^-2.862 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-5.538 ^-1.918 ^-3.197 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-6.118 ^-1.918 ^-3.532 ~ ~
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2838}