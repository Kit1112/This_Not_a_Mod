#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15f,0f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.135 ^-6.427 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.135 ^-6.446 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.135 ^-6.466 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.135 ^-6.487 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.135 ^-6.509 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.135 ^-6.532 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.135 ^-6.557 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.135 ^-6.581 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.135 ^-6.606 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}