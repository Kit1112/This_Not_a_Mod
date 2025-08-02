#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,15f,0f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^2.634 ^-1.918 ^4.562 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^2.292 ^-1.918 ^3.97 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^1.964 ^-1.918 ^3.401 ~ ~
execute if score #this.aj.anim aj.i matches 86..93 run tp @s ^1.91 ^-1.918 ^3.309 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5785}