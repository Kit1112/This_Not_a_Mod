#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-15f,-180f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^0.129 ^3.26 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^0.129 ^3.28 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0.129 ^3.298 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0.129 ^3.316 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^0.129 ^3.332 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^0.129 ^3.347 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^0.129 ^3.36 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^0.129 ^3.372 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}