#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15f,-180f]
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-0.109 ^-6.664 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-0.109 ^-6.639 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-0.109 ^-6.615 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-0.109 ^-6.592 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 31 run tp @s ^-0.109 ^-6.569 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 32 run tp @s ^-0.109 ^-6.548 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 33 run tp @s ^-0.109 ^-6.528 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 34 run tp @s ^-0.109 ^-6.508 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 35 run tp @s ^-0.109 ^-6.489 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}