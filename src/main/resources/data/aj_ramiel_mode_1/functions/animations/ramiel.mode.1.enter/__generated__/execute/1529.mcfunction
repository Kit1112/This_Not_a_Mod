#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75f,-180f]
execute if score #this.aj.anim aj.i matches 124 run tp @s ^-0.562 ^3.081 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 125 run tp @s ^-0.562 ^3.108 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 126 run tp @s ^-0.562 ^3.133 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 127 run tp @s ^-0.562 ^3.159 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 128 run tp @s ^-0.562 ^3.183 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 129 run tp @s ^-0.562 ^3.207 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 130 run tp @s ^-0.562 ^3.231 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 131 run tp @s ^-0.562 ^3.253 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 132 run tp @s ^-0.562 ^3.275 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 124 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}