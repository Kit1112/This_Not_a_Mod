#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15f,-180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-0.109 ^-7.277 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-0.109 ^-7.265 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-0.109 ^-7.252 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-0.109 ^-7.238 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-0.109 ^-7.222 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-0.109 ^-7.205 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^-0.109 ^-7.186 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^-0.109 ^-7.167 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^-0.109 ^-7.146 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}