#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 53 run tp @s ^5.712 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 54 run tp @s ^5.748 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^5.785 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^5.818 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^5.853 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^5.889 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^5.924 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^6.03 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^6.15 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^6.273 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4783}