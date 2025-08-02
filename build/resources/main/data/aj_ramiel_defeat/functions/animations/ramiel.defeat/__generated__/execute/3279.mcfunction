#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [13.546f,0.07f,73.928f]
execute if score #this.aj.anim aj.i matches 54..60 run tp @s ^1.758 ^-2.747 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^1.874 ^-2.747 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^2.076 ^-2.747 ^3.425 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:278}