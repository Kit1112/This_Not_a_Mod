#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75f,-180f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-0.562 ^2.795 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-0.562 ^2.77 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-0.562 ^2.747 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-0.562 ^2.724 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-0.562 ^2.701 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^-0.562 ^2.68 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^-0.562 ^2.659 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^-0.562 ^2.64 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-0.562 ^2.621 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}