#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-15f,-180f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0.129 ^2.997 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.129 ^2.97 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.129 ^2.944 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.129 ^2.916 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.129 ^2.889 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.129 ^2.863 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.129 ^2.836 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.129 ^2.81 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.129 ^2.785 ^-0.483 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:272}