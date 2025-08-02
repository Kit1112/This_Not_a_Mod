#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.546f,0.07f,73.928f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^2.312 ^-2.747 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^2.544 ^-2.747 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^2.731 ^-2.747 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^2.808 ^-2.731 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^2.828 ^-2.682 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^2.822 ^-2.615 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^2.807 ^-2.544 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^2.798 ^-2.486 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^2.813 ^-2.458 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:278}