#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15f,-180f]
execute if score #this.aj.anim aj.i matches 18 run tp @s ^-0.109 ^-6.901 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 19 run tp @s ^-0.109 ^-6.874 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 20 run tp @s ^-0.109 ^-6.847 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-0.109 ^-6.82 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-0.109 ^-6.793 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-0.109 ^-6.766 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-0.109 ^-6.74 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-0.109 ^-6.714 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-0.109 ^-6.688 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 18 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}