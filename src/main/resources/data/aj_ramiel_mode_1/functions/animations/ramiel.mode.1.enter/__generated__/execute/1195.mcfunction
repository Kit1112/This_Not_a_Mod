#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-15f,-180f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^0.129 ^3.046 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^0.129 ^3.073 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^0.129 ^3.098 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^0.129 ^3.123 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^0.129 ^3.148 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^0.129 ^3.172 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^0.129 ^3.196 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^0.129 ^3.218 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^0.129 ^3.24 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}