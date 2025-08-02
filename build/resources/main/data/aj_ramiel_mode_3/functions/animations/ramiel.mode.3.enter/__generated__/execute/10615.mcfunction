#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-45f,0f]
execute if score #this.aj.anim aj.i matches 0..4 run tp @s ^0 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.015 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.21 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.239 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0.271 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0.301 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0.338 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4943}