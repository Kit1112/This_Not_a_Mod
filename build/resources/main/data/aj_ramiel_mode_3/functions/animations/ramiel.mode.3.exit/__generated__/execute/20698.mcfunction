#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 101 run tp @s ^5.948 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^5.899 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^5.863 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^5.829 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^5.793 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^5.759 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^5.723 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^5.687 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^5.652 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^5.618 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4783}