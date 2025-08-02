#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45f,0f]
execute if score #this.aj.anim aj.i matches 83 run tp @s ^5.268 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^4.584 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^3.928 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 86..93 run tp @s ^3.82 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4943}