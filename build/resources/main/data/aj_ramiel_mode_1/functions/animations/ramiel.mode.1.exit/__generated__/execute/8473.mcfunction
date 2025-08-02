#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-15f,-180f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^0.129 ^2.76 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^0.129 ^2.735 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^0.129 ^2.712 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^0.129 ^2.689 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^0.129 ^2.666 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^0.129 ^2.645 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^0.129 ^2.624 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^0.129 ^2.605 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^0.129 ^2.586 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}