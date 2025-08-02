#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-15f,-180f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.129 ^2.602 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.129 ^2.621 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^0.129 ^2.642 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^0.129 ^2.663 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^0.129 ^2.685 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^0.129 ^2.708 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^0.129 ^2.732 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^0.129 ^2.757 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^0.129 ^2.782 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}