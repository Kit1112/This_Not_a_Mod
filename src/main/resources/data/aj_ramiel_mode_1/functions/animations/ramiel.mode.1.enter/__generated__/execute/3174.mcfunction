#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15f,-180f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-0.109 ^-6.506 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-0.109 ^-6.525 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-0.109 ^-6.545 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-0.109 ^-6.567 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-0.109 ^-6.588 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-0.109 ^-6.612 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-0.109 ^-6.636 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-0.109 ^-6.66 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-0.109 ^-6.685 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}