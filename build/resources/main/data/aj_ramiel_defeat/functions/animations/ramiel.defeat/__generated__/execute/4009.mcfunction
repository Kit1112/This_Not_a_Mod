#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.5f,2.5f,90f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.49f,3.167f,88.232f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.451f,3.926f,86.098f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.386f,4.643f,83.935f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.296f,5.317f,81.741f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.185f,5.936f,79.563f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.049f,6.533f,77.266f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-3.348 ^-2.986 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-3.459 ^-3.064 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-3.647 ^-3.224 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-3.694 ^-3.407 ^-2.903 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-3.707 ^-3.59 ^-2.883 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-3.722 ^-3.777 ^-2.863 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-3.739 ^-3.968 ^-2.842 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-3.757 ^-4.158 ^-2.822 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-3.777 ^-4.357 ^-2.8 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:516}