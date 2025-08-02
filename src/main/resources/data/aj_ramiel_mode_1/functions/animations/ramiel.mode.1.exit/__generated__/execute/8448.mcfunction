#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-15f,-180f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0.129 ^3.226 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^0.129 ^3.203 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^0.129 ^3.18 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0.129 ^3.152 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0.129 ^3.127 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0.129 ^3.101 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0.129 ^3.076 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^0.129 ^3.05 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^0.129 ^3.023 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}