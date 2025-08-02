#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15f,-180f]
execute if score #this.aj.anim aj.i matches 9 run tp @s ^-0.109 ^-7.129 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 10 run tp @s ^-0.109 ^-7.106 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 11 run tp @s ^-0.109 ^-7.084 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^-0.109 ^-7.055 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^-0.109 ^-7.031 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 14 run tp @s ^-0.109 ^-7.005 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^-0.109 ^-6.979 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 16 run tp @s ^-0.109 ^-6.953 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 17 run tp @s ^-0.109 ^-6.927 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 9 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}