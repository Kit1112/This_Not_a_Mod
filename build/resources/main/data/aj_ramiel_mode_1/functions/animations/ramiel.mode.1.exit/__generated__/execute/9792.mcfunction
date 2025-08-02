#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [35.25f,-15f,0f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^0.135 ^-6.821 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^0.135 ^-6.795 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0.135 ^-6.768 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^0.135 ^-6.741 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^0.135 ^-6.714 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^0.135 ^-6.687 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^0.135 ^-6.661 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^0.135 ^-6.635 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^0.135 ^-6.609 ^0.505 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:668}